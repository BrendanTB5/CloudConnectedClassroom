/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/


#include "../include/nvmctrl.h"

typedef struct NVMCTRL_descriptor_s {
	nvmctrl_status_t       status;
	uint8_t *              eeprom;
	uint8_t *              data;
	uint8_t                size;
	eeprom_write_done_cb_t cb;
} NVMCTRL_descriptor_t;

static volatile NVMCTRL_descriptor_t NVMCTRL_desc;

/**
 * \brief Initialize nvmctrl interface
 * \return Return value 0 if success
 */
int8_t FLASH_Initialize()
{
    //BOOTLOCK disabled; APCWP enabled; 
    NVMCTRL.CTRLB = 0x01;

    //EEREADY enabled; 
    NVMCTRL.INTCTRL = 0x01;

    NVMCTRL_desc.cb = NULL;
    return 0;
}

ISR(NVMCTRL_EE_vect)
{

	/* The interrupt flag has to be cleared manually */
	NVMCTRL.INTFLAGS = NVMCTRL_EEREADY_bm;

	if (NVMCTRL_desc.size == 0) {
		NVMCTRL_desc.status = NVM_OK;
		NVMCTRL.INTCTRL &= ~NVMCTRL_EEREADY_bm;
		if (NVMCTRL_desc.cb != NULL) {
			NVMCTRL_desc.cb();
		}
	} else {
		while (1) {
			/* Write byte to page buffer */
			*NVMCTRL_desc.eeprom++ = *NVMCTRL_desc.data++;
			NVMCTRL_desc.size--;
			// If we have filled an entire page or written last byte to a partially filled page
			if ((((uintptr_t)NVMCTRL_desc.eeprom % EEPROM_PAGE_SIZE) == 0) || (NVMCTRL_desc.size == 0)) {
				/* Erase written part of page and program with desired value(s) */
				ccp_write_spm((void *)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);
				break;
			}
		}
	}
}

/**
 * \brief Register a callback function to be called by EEPROM ISR after block write has finished.
 *
 * \param[in] f Pointer to function to be called
 *
 * \return Nothing.
 */
void FLASH_RegisterCallback(eeprom_write_done_cb_t f)
{
	NVMCTRL_desc.cb = f;
}

/**
 * \brief Read a byte from eeprom
 *
 * \param[in] eeprom_adr The byte-address in eeprom to read from
 *
 * \return The read byte
 */
uint8_t FLASH_ReadEepromByte(eeprom_adr_t eeprom_adr)
{
		// Wait until any write operation has finished
	 	while (NVMCTRL_desc.status == NVM_BUSY);
		return *(uint8_t *)(EEPROM_START + eeprom_adr);
	
}

/**
 * \brief Write a byte to eeprom
 *
 * \param[in] eeprom_adr The byte-address in eeprom to write to
 * \param[in] data The byte to write
 *
 * \return Status of write operation
 */
nvmctrl_status_t FLASH_WriteEepromByte(eeprom_adr_t eeprom_adr, uint8_t data)
{
		return (FLASH_WriteEepromBlock(eeprom_adr, &data, 1));
}

/**
 * \brief Read a block from eeprom
 *
 * \param[in] eeprom_adr The byte-address in eeprom to read from
 * \param[in] data Buffer to place read data into
 *
 * \return Nothing
 */
void FLASH_ReadEepromBlock(eeprom_adr_t eeprom_adr, uint8_t *data, size_t size)
{
		// Wait until any write operation has finished
	 	while (NVMCTRL_desc.status == NVM_BUSY);
		memcpy(data, (uint8_t *)(EEPROM_START + eeprom_adr), size);
	
}

/**
 * \brief Write a block to eeprom
 *
 * \param[in] eeprom_adr The byte-address in eeprom to write to
 * \param[in] data The buffer to write
 *
 * \return Status of write operation
 */
nvmctrl_status_t FLASH_WriteEepromBlock(eeprom_adr_t eeprom_adr, uint8_t *data, size_t size)
{
		 // Wait until any write operation has finished
		while (NVMCTRL_desc.status == NVM_BUSY);

		NVMCTRL_desc.eeprom = (uint8_t *)(EEPROM_START + eeprom_adr);
		NVMCTRL_desc.data = data;
		NVMCTRL_desc.size = size;
		NVMCTRL_desc.status = NVM_BUSY;
		
		/* Clear page buffer */
		ccp_write_spm((void*)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEBUFCLR_gc);
		NVMCTRL.INTCTRL |= NVMCTRL_EEREADY_bm;
		return NVM_OK;

}

/**
 * \brief Check if the EEPROM can accept data to be read or written
 *
 * \return The status of EEPROM busy check
 * \retval false The EEPROM can not receive data to be read or written
 * \retval true The EEPROM can receive data to be read or written
 */
bool FLASH_IsEepromReady()
{
		return (NVMCTRL_desc.status == NVM_BUSY);
}

/**
 * \brief Read a byte from flash
 *
 * \param[in] flash_adr The byte-address in flash to read from
 *
 * \return The read byte
 */
uint8_t FLASH_ReadFlashByte(flash_adr_t flash_adr)
{

	return *(uint8_t *)(MAPPED_PROGMEM_START + flash_adr);
}

/**
 * \brief Write a byte to flash
 *
 * \param[in] flash_adr The byte-address in flash to write to
 * \param[in] page_buffer A buffer in memory the size of a flash page, used as a scratchpad
 * \param[in] data The byte to write
 *
 * \return Status of the operation
 */
nvmctrl_status_t FLASH_WriteFlashByte(flash_adr_t flash_adr, uint8_t *ram_buffer, uint8_t data)
{
	// Create a pointer to the start of the flash page containing the byte to write
	volatile uint8_t *start_of_page = (uint8_t *)((MAPPED_PROGMEM_START + flash_adr) & ~(PROGMEM_PAGE_SIZE - 1));
	uint8_t           i;

	// Read contents of Flash page containing the target address to the page buffer
	for (i               = 0; i < PROGMEM_PAGE_SIZE; i++)
		start_of_page[i] = start_of_page[i];

	// Write the new byte value to the correct address in the page buffer
	*(uint8_t *)(MAPPED_PROGMEM_START + flash_adr) = data;

	// Erase and write the flash page
	ccp_write_spm((void *)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);

	if (NVMCTRL.STATUS & NVMCTRL_WRERROR_bm)
		return NVM_ERROR;
	else
		return NVM_OK;
}

/**
 * \brief Erase a page in flash
 *
 * \param[in] flash_adr The byte-address in flash to erase. Must point to start-of-page.
 *
 * \return Status of the operation
 */
nvmctrl_status_t FLASH_EraseFlashPage(flash_adr_t flash_adr)
{

	// Create a pointer in unified memory map to the page to erase
	uint8_t *data_space = (uint8_t *)(MAPPED_PROGMEM_START + flash_adr);

	// Perform a dummy write to this address to update the address register in NVMCTL
	*data_space = 0;

	// Erase the flash page
	ccp_write_spm((void *)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASE_gc);

	if (NVMCTRL.STATUS & NVMCTRL_WRERROR_bm)
		return NVM_ERROR;
	else
		return NVM_OK;
}


/**
 * \brief Write a page in flash. No page erase is performed by this function.
 *
 * \param[in] flash_adr The byte-address of the flash page to write to. Must point to start-of-page.
 * \param[in] data The data to write to the flash page
 *
 * \return Status of the operation
 */
nvmctrl_status_t FLASH_WriteFlashPage(flash_adr_t flash_adr, uint8_t *data)
{

	// Create a pointer in unified memory map to the page to write
	uint8_t *data_space = (uint8_t *)(MAPPED_PROGMEM_START + flash_adr);

	// Write data to the page buffer
	memcpy(data_space, data, PROGMEM_PAGE_SIZE);

	// Write the flash page
	ccp_write_spm((void *)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEWRITE_gc);

	if (NVMCTRL.STATUS & NVMCTRL_WRERROR_bm)
		return NVM_ERROR;
	else
		return NVM_OK;
}

/**
 * \brief Writes a buffer to flash.
 * The flash does not need to be erased beforehand.
 * The flash address to write to does not need to be aligned to any specific boundary.
 *
 * \param[in] flash_adr The byte-address of the flash to write to
 * \param[in] data The data to write to the flash
 * \param[in] size The size of the data (in bytes) to write to the flash
 * \param[in] page_buffer A buffer in memory the size of a flash page, used as a scratchpad
 *
 * \return Status of the operation
 */
nvmctrl_status_t FLASH_WriteFlashBlock(flash_adr_t flash_adr, uint8_t *data, size_t size, uint8_t *ram_buffer)
{

	// Create a pointer in unified memory map to the start of first page to modify
	volatile uint8_t *data_space   = (uint8_t *)((MAPPED_PROGMEM_START + flash_adr) & ~(PROGMEM_PAGE_SIZE - 1));
	uint8_t           start_offset = flash_adr % PROGMEM_PAGE_SIZE;
	uint8_t           i;

	// Step 1:
	// Fill page buffer with contents of first flash page to be written up
	// to the first flash address to be replaced by the new contents
	for (i = 0; i < start_offset; i++) {
		*data_space = *data_space;
		data_space++;
	}

	// Step 2:
	// Write all of the new flash contents to the page buffer, writing the
	// page buffer to flash every time the buffer contains a complete flash
	// page.
	while (size > 0) {
		*data_space++ = *data++;
		size--;
		if (((uintptr_t)data_space % PROGMEM_PAGE_SIZE) == 0) {
			// Erase and write the flash page
			ccp_write_spm((void *)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);
			if (NVMCTRL.STATUS & NVMCTRL_WRERROR_bm)
				return NVM_ERROR;
		}
	}

	// Step 3:
	// After step 2, the page buffer may be partially full with the last
	// part of the new data to write to flash. The remainder of the flash page
	// shall be unaltered. Fill up the remainder
	// of the page buffer with the original contents of the flash page, and do a
	// final flash page write.
	while (1) {
		*data_space = *data_space;
		data_space++;
		if (((uintptr_t)data_space % PROGMEM_PAGE_SIZE) == 0) {
			// Erase and write the last flash page
			ccp_write_spm((void *)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);
			if (NVMCTRL.STATUS & NVMCTRL_WRERROR_bm)
				return NVM_ERROR;
			else
				return NVM_OK;
		}
	}
}

/**
 * \brief Writes a byte stream to flash.
 * The erase granularity of the flash (i.e. one page) will cause this operation
 * to erase an entire page at a time. To avoid corrupting other flash contents,
 * make sure that the memory range in flash being streamed to is starting on a page
 * boundary, and that enough flash pages are available to hold all data being written.
 *
 * The function will perform flash page operations such as erase and write
 * as appropriate, typically when the last byte in a page is written. If
 * the last byte written is not at the last address of a page, the "finalize"
 * parameter can be set to force a page write after this byte.
 *
 * This function is intended used in devices where RAM resources are too limited
 * to afford a buffer needed by the write and erase page functions, and where
 * performance needs and code size concerns leaves the byte write and block
 * write functions too expensive.
 *
 * \param[in] flash_adr The byte-address of the flash to write to
 * \param[in] data The data byte to write to the flash
 * \param[in] finalize Set to true for the final write to the buffer
 *
 * \return Status of the operation
 */
nvmctrl_status_t FLASH_WriteFlashStream(flash_adr_t flash_adr, uint8_t data, bool finalize)
{

	bool final_adr_in_page = ((flash_adr & (PROGMEM_PAGE_SIZE - 1)) == (PROGMEM_PAGE_SIZE - 1));

	// Write the new byte value to the correct address in the page buffer
	*(uint8_t *)(MAPPED_PROGMEM_START + flash_adr) = data;

	if (final_adr_in_page || finalize)
		// Erase and write the flash page
		ccp_write_spm((void *)&NVMCTRL.CTRLA, NVMCTRL_CMD_PAGEERASEWRITE_gc);

	if (NVMCTRL.STATUS & NVMCTRL_WRERROR_bm)
		return NVM_ERROR;
	else
		return NVM_OK;
}
