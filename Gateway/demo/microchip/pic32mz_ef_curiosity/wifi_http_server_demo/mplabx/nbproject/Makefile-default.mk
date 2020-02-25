#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../../common/cpu_endian.c ../../../../../common/os_port_freertos.c ../../../../../common/date_time.c ../../../../../common/str.c ../../../../../common/path.c ../../../../../common/resource_manager.c ../../../../../cyclone_crypto/hash/md5.c ../../../../../cyclone_crypto/hash/sha1.c ../../../../../cyclone_crypto/hash/sha224.c ../../../../../cyclone_crypto/hash/sha256.c ../../../../../cyclone_crypto/hash/sha384.c ../../../../../cyclone_crypto/hash/sha512.c ../../../../../cyclone_crypto/mac/hmac.c ../../../../../cyclone_crypto/cipher/rc4.c ../../../../../cyclone_crypto/cipher/idea.c ../../../../../cyclone_crypto/cipher/des.c ../../../../../cyclone_crypto/cipher/des3.c ../../../../../cyclone_crypto/cipher/aes.c ../../../../../cyclone_crypto/cipher/camellia.c ../../../../../cyclone_crypto/cipher/seed.c ../../../../../cyclone_crypto/cipher/aria.c ../../../../../cyclone_crypto/cipher_mode/cbc.c ../../../../../cyclone_crypto/aead/ccm.c ../../../../../cyclone_crypto/aead/gcm.c ../../../../../cyclone_crypto/cipher/chacha.c ../../../../../cyclone_crypto/mac/poly1305.c ../../../../../cyclone_crypto/aead/chacha20_poly1305.c ../../../../../cyclone_crypto/pkc/dh.c ../../../../../cyclone_crypto/pkc/rsa.c ../../../../../cyclone_crypto/pkc/dsa.c ../../../../../cyclone_crypto/ecc/ec.c ../../../../../cyclone_crypto/ecc/ec_curves.c ../../../../../cyclone_crypto/ecc/ecdh.c ../../../../../cyclone_crypto/ecc/ecdsa.c ../../../../../cyclone_crypto/ecc/eddsa.c ../../../../../cyclone_crypto/ecc/curve25519.c ../../../../../cyclone_crypto/ecc/curve448.c ../../../../../cyclone_crypto/ecc/x25519.c ../../../../../cyclone_crypto/ecc/x448.c ../../../../../cyclone_crypto/ecc/ed25519.c ../../../../../cyclone_crypto/ecc/ed448.c ../../../../../cyclone_crypto/mpi/mpi.c ../../../../../cyclone_crypto/encoding/base64.c ../../../../../cyclone_crypto/encoding/asn1.c ../../../../../cyclone_crypto/encoding/oid.c ../../../../../cyclone_crypto/pkix/pem_import.c ../../../../../cyclone_crypto/pkix/pkcs8_key_parse.c ../../../../../cyclone_crypto/pkix/x509_key_parse.c ../../../../../cyclone_crypto/pkix/x509_cert_parse.c ../../../../../cyclone_crypto/pkix/x509_cert_validate.c ../../../../../cyclone_crypto/pkix/x509_crl_parse.c ../../../../../cyclone_crypto/pkix/x509_crl_validate.c ../../../../../cyclone_crypto/pkix/x509_common.c ../../../../../cyclone_crypto/kdf/hkdf.c ../../../../../cyclone_crypto/rng/yarrow.c ../../../../../cyclone_ssl/tls.c ../../../../../cyclone_ssl/tls_cipher_suites.c ../../../../../cyclone_ssl/tls_handshake.c ../../../../../cyclone_ssl/tls_client.c ../../../../../cyclone_ssl/tls_client_fsm.c ../../../../../cyclone_ssl/tls_client_extensions.c ../../../../../cyclone_ssl/tls_client_misc.c ../../../../../cyclone_ssl/tls_server.c ../../../../../cyclone_ssl/tls_server_fsm.c ../../../../../cyclone_ssl/tls_server_extensions.c ../../../../../cyclone_ssl/tls_server_misc.c ../../../../../cyclone_ssl/tls_common.c ../../../../../cyclone_ssl/tls_extensions.c ../../../../../cyclone_ssl/tls_certificate.c ../../../../../cyclone_ssl/tls_signature.c ../../../../../cyclone_ssl/tls_key_material.c ../../../../../cyclone_ssl/tls_transcript_hash.c ../../../../../cyclone_ssl/tls_cache.c ../../../../../cyclone_ssl/tls_ticket.c ../../../../../cyclone_ssl/tls_ffdhe.c ../../../../../cyclone_ssl/tls_record.c ../../../../../cyclone_ssl/tls_record_encryption.c ../../../../../cyclone_ssl/tls_record_decryption.c ../../../../../cyclone_ssl/tls_misc.c ../../../../../cyclone_ssl/tls13_client.c ../../../../../cyclone_ssl/tls13_client_extensions.c ../../../../../cyclone_ssl/tls13_client_misc.c ../../../../../cyclone_ssl/tls13_server.c ../../../../../cyclone_ssl/tls13_server_extensions.c ../../../../../cyclone_ssl/tls13_server_misc.c ../../../../../cyclone_ssl/tls13_common.c ../../../../../cyclone_ssl/tls13_key_material.c ../../../../../cyclone_ssl/tls13_misc.c ../../../../../cyclone_ssl/ssl_misc.c ../../../../../cyclone_tcp/core/net.c ../../../../../cyclone_tcp/core/net_mem.c ../../../../../cyclone_tcp/drivers/mac/pic32mz_eth_driver.c ../../../../../cyclone_tcp/drivers/phy/lan8720_driver.c ../../../../../cyclone_tcp/drivers/wifi/wilc1000_driver.c ../../../../../cyclone_tcp/core/nic.c ../../../../../cyclone_tcp/core/ethernet.c ../../../../../cyclone_tcp/core/ethernet_misc.c ../../../../../cyclone_tcp/ipv4/arp.c ../../../../../cyclone_tcp/ipv4/ipv4.c ../../../../../cyclone_tcp/ipv4/ipv4_frag.c ../../../../../cyclone_tcp/ipv4/ipv4_misc.c ../../../../../cyclone_tcp/ipv4/icmp.c ../../../../../cyclone_tcp/ipv4/igmp.c ../../../../../cyclone_tcp/ipv6/ipv6.c ../../../../../cyclone_tcp/ipv6/ipv6_frag.c ../../../../../cyclone_tcp/ipv6/ipv6_misc.c ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c ../../../../../cyclone_tcp/ipv6/icmpv6.c ../../../../../cyclone_tcp/ipv6/mld.c ../../../../../cyclone_tcp/ipv6/ndp.c ../../../../../cyclone_tcp/ipv6/ndp_cache.c ../../../../../cyclone_tcp/ipv6/ndp_misc.c ../../../../../cyclone_tcp/ipv6/ndp_router_adv.c ../../../../../cyclone_tcp/ipv6/slaac.c ../../../../../cyclone_tcp/core/ip.c ../../../../../cyclone_tcp/core/tcp.c ../../../../../cyclone_tcp/core/tcp_fsm.c ../../../../../cyclone_tcp/core/tcp_misc.c ../../../../../cyclone_tcp/core/tcp_timer.c ../../../../../cyclone_tcp/core/udp.c ../../../../../cyclone_tcp/core/socket.c ../../../../../cyclone_tcp/core/bsd_socket.c ../../../../../cyclone_tcp/core/raw_socket.c ../../../../../cyclone_tcp/dns/dns_cache.c ../../../../../cyclone_tcp/dns/dns_client.c ../../../../../cyclone_tcp/dns/dns_common.c ../../../../../cyclone_tcp/dns/dns_debug.c ../../../../../cyclone_tcp/mdns/mdns_client.c ../../../../../cyclone_tcp/mdns/mdns_responder.c ../../../../../cyclone_tcp/mdns/mdns_common.c ../../../../../cyclone_tcp/netbios/nbns_client.c ../../../../../cyclone_tcp/netbios/nbns_responder.c ../../../../../cyclone_tcp/netbios/nbns_common.c ../../../../../cyclone_tcp/llmnr/llmnr_client.c ../../../../../cyclone_tcp/llmnr/llmnr_responder.c ../../../../../cyclone_tcp/llmnr/llmnr_common.c ../../../../../cyclone_tcp/dhcp/dhcp_client.c ../../../../../cyclone_tcp/dhcp/dhcp_server.c ../../../../../cyclone_tcp/dhcp/dhcp_common.c ../../../../../cyclone_tcp/dhcp/dhcp_debug.c ../../../../../cyclone_tcp/http/http_server.c ../../../../../cyclone_tcp/http/http_server_auth.c ../../../../../cyclone_tcp/http/http_server_misc.c ../../../../../cyclone_tcp/http/mime.c ../../../../../cyclone_tcp/http/ssi.c ../../../../../cyclone_tcp/mqtt/mqtt_client.c ../../../../../cyclone_tcp/mqtt/mqtt_client_misc.c ../../../../../cyclone_tcp/mqtt/mqtt_client_packet.c ../../../../../cyclone_tcp/mqtt/mqtt_client_transport.c ../../../../../cyclone_tcp/web_socket/web_socket.c ../../../../../cyclone_tcp/web_socket/web_socket_auth.c ../../../../../cyclone_tcp/web_socket/web_socket_frame.c ../../../../../cyclone_tcp/web_socket/web_socket_misc.c ../../../../../cyclone_tcp/web_socket/web_socket_transport.c ../src/main.c ../src/debug.c ../src/sprintf.c ../src/strtok_r.c ../src/eth_irq_wrapper.S ../src/ext1_irq_wrapper.S ../src/wilc1000_callbacks.c ../src/res.c ../../../../../third_party/freertos/portable/mplab/pic32mz/port.c ../../../../../third_party/freertos/portable/mplab/pic32mz/port_asm.S ../../../../../third_party/freertos/croutine.c ../../../../../third_party/freertos/list.c ../../../../../third_party/freertos/queue.c ../../../../../third_party/freertos/tasks.c ../../../../../third_party/freertos/timers.c ../../../../../third_party/freertos/portable/memmang/heap_3.c ../../../../../third_party/atmel/devices/wilc1000/bsp/source/nm_bsp_pic32mz.c ../../../../../third_party/atmel/devices/wilc1000/bus_wrapper/source/nm_bus_wrapper_pic32mz.c ../../../../../third_party/atmel/devices/wilc1000/common/source/nm_common.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_hif.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_periph.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_wifi.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmasic.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmbus.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmdrv.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmspi.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/spi_flash.c ../../../../../third_party/atmel/devices/wilc1000/drv_hash/PMK.c ../../../../../third_party/atmel/devices/wilc1000/os/source/m2m_wifi_ex.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/360186330/cpu_endian.o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ${OBJECTDIR}/_ext/360186330/date_time.o ${OBJECTDIR}/_ext/360186330/str.o ${OBJECTDIR}/_ext/360186330/path.o ${OBJECTDIR}/_ext/360186330/resource_manager.o ${OBJECTDIR}/_ext/120521611/md5.o ${OBJECTDIR}/_ext/120521611/sha1.o ${OBJECTDIR}/_ext/120521611/sha224.o ${OBJECTDIR}/_ext/120521611/sha256.o ${OBJECTDIR}/_ext/120521611/sha384.o ${OBJECTDIR}/_ext/120521611/sha512.o ${OBJECTDIR}/_ext/273211656/hmac.o ${OBJECTDIR}/_ext/7005106/rc4.o ${OBJECTDIR}/_ext/7005106/idea.o ${OBJECTDIR}/_ext/7005106/des.o ${OBJECTDIR}/_ext/7005106/des3.o ${OBJECTDIR}/_ext/7005106/aes.o ${OBJECTDIR}/_ext/7005106/camellia.o ${OBJECTDIR}/_ext/7005106/seed.o ${OBJECTDIR}/_ext/7005106/aria.o ${OBJECTDIR}/_ext/1125617168/cbc.o ${OBJECTDIR}/_ext/120726866/ccm.o ${OBJECTDIR}/_ext/120726866/gcm.o ${OBJECTDIR}/_ext/7005106/chacha.o ${OBJECTDIR}/_ext/273211656/poly1305.o ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o ${OBJECTDIR}/_ext/273214849/dh.o ${OBJECTDIR}/_ext/273214849/rsa.o ${OBJECTDIR}/_ext/273214849/dsa.o ${OBJECTDIR}/_ext/273204030/ec.o ${OBJECTDIR}/_ext/273204030/ec_curves.o ${OBJECTDIR}/_ext/273204030/ecdh.o ${OBJECTDIR}/_ext/273204030/ecdsa.o ${OBJECTDIR}/_ext/273204030/eddsa.o ${OBJECTDIR}/_ext/273204030/curve25519.o ${OBJECTDIR}/_ext/273204030/curve448.o ${OBJECTDIR}/_ext/273204030/x25519.o ${OBJECTDIR}/_ext/273204030/x448.o ${OBJECTDIR}/_ext/273204030/ed25519.o ${OBJECTDIR}/_ext/273204030/ed448.o ${OBJECTDIR}/_ext/273212127/mpi.o ${OBJECTDIR}/_ext/1404394810/base64.o ${OBJECTDIR}/_ext/1404394810/asn1.o ${OBJECTDIR}/_ext/1404394810/oid.o ${OBJECTDIR}/_ext/120273967/pem_import.o ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o ${OBJECTDIR}/_ext/120273967/x509_key_parse.o ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o ${OBJECTDIR}/_ext/120273967/x509_common.o ${OBJECTDIR}/_ext/273209830/hkdf.o ${OBJECTDIR}/_ext/273216868/yarrow.o ${OBJECTDIR}/_ext/476983781/tls.o ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o ${OBJECTDIR}/_ext/476983781/tls_handshake.o ${OBJECTDIR}/_ext/476983781/tls_client.o ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o ${OBJECTDIR}/_ext/476983781/tls_client_misc.o ${OBJECTDIR}/_ext/476983781/tls_server.o ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o ${OBJECTDIR}/_ext/476983781/tls_server_misc.o ${OBJECTDIR}/_ext/476983781/tls_common.o ${OBJECTDIR}/_ext/476983781/tls_extensions.o ${OBJECTDIR}/_ext/476983781/tls_certificate.o ${OBJECTDIR}/_ext/476983781/tls_signature.o ${OBJECTDIR}/_ext/476983781/tls_key_material.o ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o ${OBJECTDIR}/_ext/476983781/tls_cache.o ${OBJECTDIR}/_ext/476983781/tls_ticket.o ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o ${OBJECTDIR}/_ext/476983781/tls_record.o ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o ${OBJECTDIR}/_ext/476983781/tls_misc.o ${OBJECTDIR}/_ext/476983781/tls13_client.o ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o ${OBJECTDIR}/_ext/476983781/tls13_server.o ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o ${OBJECTDIR}/_ext/476983781/tls13_common.o ${OBJECTDIR}/_ext/476983781/tls13_key_material.o ${OBJECTDIR}/_ext/476983781/tls13_misc.o ${OBJECTDIR}/_ext/476983781/ssl_misc.o ${OBJECTDIR}/_ext/1079766828/net.o ${OBJECTDIR}/_ext/1079766828/net_mem.o ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o ${OBJECTDIR}/_ext/37332968/lan8720_driver.o ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o ${OBJECTDIR}/_ext/1079766828/nic.o ${OBJECTDIR}/_ext/1079766828/ethernet.o ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o ${OBJECTDIR}/_ext/1079587046/arp.o ${OBJECTDIR}/_ext/1079587046/ipv4.o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o ${OBJECTDIR}/_ext/1079587046/icmp.o ${OBJECTDIR}/_ext/1079587046/igmp.o ${OBJECTDIR}/_ext/1079587044/ipv6.o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ${OBJECTDIR}/_ext/1079587044/mld.o ${OBJECTDIR}/_ext/1079587044/ndp.o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o ${OBJECTDIR}/_ext/1079587044/slaac.o ${OBJECTDIR}/_ext/1079766828/ip.o ${OBJECTDIR}/_ext/1079766828/tcp.o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ${OBJECTDIR}/_ext/1079766828/udp.o ${OBJECTDIR}/_ext/1079766828/socket.o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ${OBJECTDIR}/_ext/242264404/dns_cache.o ${OBJECTDIR}/_ext/242264404/dns_client.o ${OBJECTDIR}/_ext/242264404/dns_common.o ${OBJECTDIR}/_ext/242264404/dns_debug.o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ${OBJECTDIR}/_ext/895184604/llmnr_client.o ${OBJECTDIR}/_ext/895184604/llmnr_responder.o ${OBJECTDIR}/_ext/895184604/llmnr_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ${OBJECTDIR}/_ext/1079744218/dhcp_server.o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ${OBJECTDIR}/_ext/1079612995/http_server.o ${OBJECTDIR}/_ext/1079612995/http_server_auth.o ${OBJECTDIR}/_ext/1079612995/http_server_misc.o ${OBJECTDIR}/_ext/1079612995/mime.o ${OBJECTDIR}/_ext/1079612995/ssi.o ${OBJECTDIR}/_ext/1079466919/mqtt_client.o ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o ${OBJECTDIR}/_ext/18976819/web_socket.o ${OBJECTDIR}/_ext/18976819/web_socket_auth.o ${OBJECTDIR}/_ext/18976819/web_socket_frame.o ${OBJECTDIR}/_ext/18976819/web_socket_misc.o ${OBJECTDIR}/_ext/18976819/web_socket_transport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/1360937237/sprintf.o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o ${OBJECTDIR}/_ext/1360937237/res.o ${OBJECTDIR}/_ext/23001898/port.o ${OBJECTDIR}/_ext/23001898/port_asm.o ${OBJECTDIR}/_ext/986256546/croutine.o ${OBJECTDIR}/_ext/986256546/list.o ${OBJECTDIR}/_ext/986256546/queue.o ${OBJECTDIR}/_ext/986256546/tasks.o ${OBJECTDIR}/_ext/986256546/timers.o ${OBJECTDIR}/_ext/979089083/heap_3.o ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o ${OBJECTDIR}/_ext/1185106856/nm_common.o ${OBJECTDIR}/_ext/1679150795/m2m_hif.o ${OBJECTDIR}/_ext/1679150795/m2m_periph.o ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o ${OBJECTDIR}/_ext/1679150795/nmasic.o ${OBJECTDIR}/_ext/1679150795/nmbus.o ${OBJECTDIR}/_ext/1679150795/nmdrv.o ${OBJECTDIR}/_ext/1679150795/nmspi.o ${OBJECTDIR}/_ext/1679150795/spi_flash.o ${OBJECTDIR}/_ext/1022178492/PMK.o ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/360186330/cpu_endian.o.d ${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d ${OBJECTDIR}/_ext/360186330/date_time.o.d ${OBJECTDIR}/_ext/360186330/str.o.d ${OBJECTDIR}/_ext/360186330/path.o.d ${OBJECTDIR}/_ext/360186330/resource_manager.o.d ${OBJECTDIR}/_ext/120521611/md5.o.d ${OBJECTDIR}/_ext/120521611/sha1.o.d ${OBJECTDIR}/_ext/120521611/sha224.o.d ${OBJECTDIR}/_ext/120521611/sha256.o.d ${OBJECTDIR}/_ext/120521611/sha384.o.d ${OBJECTDIR}/_ext/120521611/sha512.o.d ${OBJECTDIR}/_ext/273211656/hmac.o.d ${OBJECTDIR}/_ext/7005106/rc4.o.d ${OBJECTDIR}/_ext/7005106/idea.o.d ${OBJECTDIR}/_ext/7005106/des.o.d ${OBJECTDIR}/_ext/7005106/des3.o.d ${OBJECTDIR}/_ext/7005106/aes.o.d ${OBJECTDIR}/_ext/7005106/camellia.o.d ${OBJECTDIR}/_ext/7005106/seed.o.d ${OBJECTDIR}/_ext/7005106/aria.o.d ${OBJECTDIR}/_ext/1125617168/cbc.o.d ${OBJECTDIR}/_ext/120726866/ccm.o.d ${OBJECTDIR}/_ext/120726866/gcm.o.d ${OBJECTDIR}/_ext/7005106/chacha.o.d ${OBJECTDIR}/_ext/273211656/poly1305.o.d ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o.d ${OBJECTDIR}/_ext/273214849/dh.o.d ${OBJECTDIR}/_ext/273214849/rsa.o.d ${OBJECTDIR}/_ext/273214849/dsa.o.d ${OBJECTDIR}/_ext/273204030/ec.o.d ${OBJECTDIR}/_ext/273204030/ec_curves.o.d ${OBJECTDIR}/_ext/273204030/ecdh.o.d ${OBJECTDIR}/_ext/273204030/ecdsa.o.d ${OBJECTDIR}/_ext/273204030/eddsa.o.d ${OBJECTDIR}/_ext/273204030/curve25519.o.d ${OBJECTDIR}/_ext/273204030/curve448.o.d ${OBJECTDIR}/_ext/273204030/x25519.o.d ${OBJECTDIR}/_ext/273204030/x448.o.d ${OBJECTDIR}/_ext/273204030/ed25519.o.d ${OBJECTDIR}/_ext/273204030/ed448.o.d ${OBJECTDIR}/_ext/273212127/mpi.o.d ${OBJECTDIR}/_ext/1404394810/base64.o.d ${OBJECTDIR}/_ext/1404394810/asn1.o.d ${OBJECTDIR}/_ext/1404394810/oid.o.d ${OBJECTDIR}/_ext/120273967/pem_import.o.d ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o.d ${OBJECTDIR}/_ext/120273967/x509_key_parse.o.d ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o.d ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o.d ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o.d ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o.d ${OBJECTDIR}/_ext/120273967/x509_common.o.d ${OBJECTDIR}/_ext/273209830/hkdf.o.d ${OBJECTDIR}/_ext/273216868/yarrow.o.d ${OBJECTDIR}/_ext/476983781/tls.o.d ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o.d ${OBJECTDIR}/_ext/476983781/tls_handshake.o.d ${OBJECTDIR}/_ext/476983781/tls_client.o.d ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o.d ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o.d ${OBJECTDIR}/_ext/476983781/tls_client_misc.o.d ${OBJECTDIR}/_ext/476983781/tls_server.o.d ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o.d ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o.d ${OBJECTDIR}/_ext/476983781/tls_server_misc.o.d ${OBJECTDIR}/_ext/476983781/tls_common.o.d ${OBJECTDIR}/_ext/476983781/tls_extensions.o.d ${OBJECTDIR}/_ext/476983781/tls_certificate.o.d ${OBJECTDIR}/_ext/476983781/tls_signature.o.d ${OBJECTDIR}/_ext/476983781/tls_key_material.o.d ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o.d ${OBJECTDIR}/_ext/476983781/tls_cache.o.d ${OBJECTDIR}/_ext/476983781/tls_ticket.o.d ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o.d ${OBJECTDIR}/_ext/476983781/tls_record.o.d ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o.d ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o.d ${OBJECTDIR}/_ext/476983781/tls_misc.o.d ${OBJECTDIR}/_ext/476983781/tls13_client.o.d ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o.d ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o.d ${OBJECTDIR}/_ext/476983781/tls13_server.o.d ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o.d ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o.d ${OBJECTDIR}/_ext/476983781/tls13_common.o.d ${OBJECTDIR}/_ext/476983781/tls13_key_material.o.d ${OBJECTDIR}/_ext/476983781/tls13_misc.o.d ${OBJECTDIR}/_ext/476983781/ssl_misc.o.d ${OBJECTDIR}/_ext/1079766828/net.o.d ${OBJECTDIR}/_ext/1079766828/net_mem.o.d ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o.d ${OBJECTDIR}/_ext/37332968/lan8720_driver.o.d ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o.d ${OBJECTDIR}/_ext/1079766828/nic.o.d ${OBJECTDIR}/_ext/1079766828/ethernet.o.d ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o.d ${OBJECTDIR}/_ext/1079587046/arp.o.d ${OBJECTDIR}/_ext/1079587046/ipv4.o.d ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o.d ${OBJECTDIR}/_ext/1079587046/icmp.o.d ${OBJECTDIR}/_ext/1079587046/igmp.o.d ${OBJECTDIR}/_ext/1079587044/ipv6.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d ${OBJECTDIR}/_ext/1079587044/mld.o.d ${OBJECTDIR}/_ext/1079587044/ndp.o.d ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o.d ${OBJECTDIR}/_ext/1079587044/slaac.o.d ${OBJECTDIR}/_ext/1079766828/ip.o.d ${OBJECTDIR}/_ext/1079766828/tcp.o.d ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d ${OBJECTDIR}/_ext/1079766828/udp.o.d ${OBJECTDIR}/_ext/1079766828/socket.o.d ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d ${OBJECTDIR}/_ext/242264404/dns_cache.o.d ${OBJECTDIR}/_ext/242264404/dns_client.o.d ${OBJECTDIR}/_ext/242264404/dns_common.o.d ${OBJECTDIR}/_ext/242264404/dns_debug.o.d ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d ${OBJECTDIR}/_ext/895184604/llmnr_client.o.d ${OBJECTDIR}/_ext/895184604/llmnr_responder.o.d ${OBJECTDIR}/_ext/895184604/llmnr_common.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_server.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d ${OBJECTDIR}/_ext/1079612995/http_server.o.d ${OBJECTDIR}/_ext/1079612995/http_server_auth.o.d ${OBJECTDIR}/_ext/1079612995/http_server_misc.o.d ${OBJECTDIR}/_ext/1079612995/mime.o.d ${OBJECTDIR}/_ext/1079612995/ssi.o.d ${OBJECTDIR}/_ext/1079466919/mqtt_client.o.d ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o.d ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o.d ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o.d ${OBJECTDIR}/_ext/18976819/web_socket.o.d ${OBJECTDIR}/_ext/18976819/web_socket_auth.o.d ${OBJECTDIR}/_ext/18976819/web_socket_frame.o.d ${OBJECTDIR}/_ext/18976819/web_socket_misc.o.d ${OBJECTDIR}/_ext/18976819/web_socket_transport.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/debug.o.d ${OBJECTDIR}/_ext/1360937237/sprintf.o.d ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.d ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o.d ${OBJECTDIR}/_ext/1360937237/res.o.d ${OBJECTDIR}/_ext/23001898/port.o.d ${OBJECTDIR}/_ext/23001898/port_asm.o.d ${OBJECTDIR}/_ext/986256546/croutine.o.d ${OBJECTDIR}/_ext/986256546/list.o.d ${OBJECTDIR}/_ext/986256546/queue.o.d ${OBJECTDIR}/_ext/986256546/tasks.o.d ${OBJECTDIR}/_ext/986256546/timers.o.d ${OBJECTDIR}/_ext/979089083/heap_3.o.d ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o.d ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o.d ${OBJECTDIR}/_ext/1185106856/nm_common.o.d ${OBJECTDIR}/_ext/1679150795/m2m_hif.o.d ${OBJECTDIR}/_ext/1679150795/m2m_periph.o.d ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o.d ${OBJECTDIR}/_ext/1679150795/nmasic.o.d ${OBJECTDIR}/_ext/1679150795/nmbus.o.d ${OBJECTDIR}/_ext/1679150795/nmdrv.o.d ${OBJECTDIR}/_ext/1679150795/nmspi.o.d ${OBJECTDIR}/_ext/1679150795/spi_flash.o.d ${OBJECTDIR}/_ext/1022178492/PMK.o.d ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/360186330/cpu_endian.o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ${OBJECTDIR}/_ext/360186330/date_time.o ${OBJECTDIR}/_ext/360186330/str.o ${OBJECTDIR}/_ext/360186330/path.o ${OBJECTDIR}/_ext/360186330/resource_manager.o ${OBJECTDIR}/_ext/120521611/md5.o ${OBJECTDIR}/_ext/120521611/sha1.o ${OBJECTDIR}/_ext/120521611/sha224.o ${OBJECTDIR}/_ext/120521611/sha256.o ${OBJECTDIR}/_ext/120521611/sha384.o ${OBJECTDIR}/_ext/120521611/sha512.o ${OBJECTDIR}/_ext/273211656/hmac.o ${OBJECTDIR}/_ext/7005106/rc4.o ${OBJECTDIR}/_ext/7005106/idea.o ${OBJECTDIR}/_ext/7005106/des.o ${OBJECTDIR}/_ext/7005106/des3.o ${OBJECTDIR}/_ext/7005106/aes.o ${OBJECTDIR}/_ext/7005106/camellia.o ${OBJECTDIR}/_ext/7005106/seed.o ${OBJECTDIR}/_ext/7005106/aria.o ${OBJECTDIR}/_ext/1125617168/cbc.o ${OBJECTDIR}/_ext/120726866/ccm.o ${OBJECTDIR}/_ext/120726866/gcm.o ${OBJECTDIR}/_ext/7005106/chacha.o ${OBJECTDIR}/_ext/273211656/poly1305.o ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o ${OBJECTDIR}/_ext/273214849/dh.o ${OBJECTDIR}/_ext/273214849/rsa.o ${OBJECTDIR}/_ext/273214849/dsa.o ${OBJECTDIR}/_ext/273204030/ec.o ${OBJECTDIR}/_ext/273204030/ec_curves.o ${OBJECTDIR}/_ext/273204030/ecdh.o ${OBJECTDIR}/_ext/273204030/ecdsa.o ${OBJECTDIR}/_ext/273204030/eddsa.o ${OBJECTDIR}/_ext/273204030/curve25519.o ${OBJECTDIR}/_ext/273204030/curve448.o ${OBJECTDIR}/_ext/273204030/x25519.o ${OBJECTDIR}/_ext/273204030/x448.o ${OBJECTDIR}/_ext/273204030/ed25519.o ${OBJECTDIR}/_ext/273204030/ed448.o ${OBJECTDIR}/_ext/273212127/mpi.o ${OBJECTDIR}/_ext/1404394810/base64.o ${OBJECTDIR}/_ext/1404394810/asn1.o ${OBJECTDIR}/_ext/1404394810/oid.o ${OBJECTDIR}/_ext/120273967/pem_import.o ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o ${OBJECTDIR}/_ext/120273967/x509_key_parse.o ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o ${OBJECTDIR}/_ext/120273967/x509_common.o ${OBJECTDIR}/_ext/273209830/hkdf.o ${OBJECTDIR}/_ext/273216868/yarrow.o ${OBJECTDIR}/_ext/476983781/tls.o ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o ${OBJECTDIR}/_ext/476983781/tls_handshake.o ${OBJECTDIR}/_ext/476983781/tls_client.o ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o ${OBJECTDIR}/_ext/476983781/tls_client_misc.o ${OBJECTDIR}/_ext/476983781/tls_server.o ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o ${OBJECTDIR}/_ext/476983781/tls_server_misc.o ${OBJECTDIR}/_ext/476983781/tls_common.o ${OBJECTDIR}/_ext/476983781/tls_extensions.o ${OBJECTDIR}/_ext/476983781/tls_certificate.o ${OBJECTDIR}/_ext/476983781/tls_signature.o ${OBJECTDIR}/_ext/476983781/tls_key_material.o ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o ${OBJECTDIR}/_ext/476983781/tls_cache.o ${OBJECTDIR}/_ext/476983781/tls_ticket.o ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o ${OBJECTDIR}/_ext/476983781/tls_record.o ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o ${OBJECTDIR}/_ext/476983781/tls_misc.o ${OBJECTDIR}/_ext/476983781/tls13_client.o ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o ${OBJECTDIR}/_ext/476983781/tls13_server.o ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o ${OBJECTDIR}/_ext/476983781/tls13_common.o ${OBJECTDIR}/_ext/476983781/tls13_key_material.o ${OBJECTDIR}/_ext/476983781/tls13_misc.o ${OBJECTDIR}/_ext/476983781/ssl_misc.o ${OBJECTDIR}/_ext/1079766828/net.o ${OBJECTDIR}/_ext/1079766828/net_mem.o ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o ${OBJECTDIR}/_ext/37332968/lan8720_driver.o ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o ${OBJECTDIR}/_ext/1079766828/nic.o ${OBJECTDIR}/_ext/1079766828/ethernet.o ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o ${OBJECTDIR}/_ext/1079587046/arp.o ${OBJECTDIR}/_ext/1079587046/ipv4.o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o ${OBJECTDIR}/_ext/1079587046/icmp.o ${OBJECTDIR}/_ext/1079587046/igmp.o ${OBJECTDIR}/_ext/1079587044/ipv6.o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ${OBJECTDIR}/_ext/1079587044/mld.o ${OBJECTDIR}/_ext/1079587044/ndp.o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o ${OBJECTDIR}/_ext/1079587044/slaac.o ${OBJECTDIR}/_ext/1079766828/ip.o ${OBJECTDIR}/_ext/1079766828/tcp.o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ${OBJECTDIR}/_ext/1079766828/udp.o ${OBJECTDIR}/_ext/1079766828/socket.o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ${OBJECTDIR}/_ext/242264404/dns_cache.o ${OBJECTDIR}/_ext/242264404/dns_client.o ${OBJECTDIR}/_ext/242264404/dns_common.o ${OBJECTDIR}/_ext/242264404/dns_debug.o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ${OBJECTDIR}/_ext/895184604/llmnr_client.o ${OBJECTDIR}/_ext/895184604/llmnr_responder.o ${OBJECTDIR}/_ext/895184604/llmnr_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ${OBJECTDIR}/_ext/1079744218/dhcp_server.o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ${OBJECTDIR}/_ext/1079612995/http_server.o ${OBJECTDIR}/_ext/1079612995/http_server_auth.o ${OBJECTDIR}/_ext/1079612995/http_server_misc.o ${OBJECTDIR}/_ext/1079612995/mime.o ${OBJECTDIR}/_ext/1079612995/ssi.o ${OBJECTDIR}/_ext/1079466919/mqtt_client.o ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o ${OBJECTDIR}/_ext/18976819/web_socket.o ${OBJECTDIR}/_ext/18976819/web_socket_auth.o ${OBJECTDIR}/_ext/18976819/web_socket_frame.o ${OBJECTDIR}/_ext/18976819/web_socket_misc.o ${OBJECTDIR}/_ext/18976819/web_socket_transport.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/1360937237/sprintf.o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o ${OBJECTDIR}/_ext/1360937237/res.o ${OBJECTDIR}/_ext/23001898/port.o ${OBJECTDIR}/_ext/23001898/port_asm.o ${OBJECTDIR}/_ext/986256546/croutine.o ${OBJECTDIR}/_ext/986256546/list.o ${OBJECTDIR}/_ext/986256546/queue.o ${OBJECTDIR}/_ext/986256546/tasks.o ${OBJECTDIR}/_ext/986256546/timers.o ${OBJECTDIR}/_ext/979089083/heap_3.o ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o ${OBJECTDIR}/_ext/1185106856/nm_common.o ${OBJECTDIR}/_ext/1679150795/m2m_hif.o ${OBJECTDIR}/_ext/1679150795/m2m_periph.o ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o ${OBJECTDIR}/_ext/1679150795/nmasic.o ${OBJECTDIR}/_ext/1679150795/nmbus.o ${OBJECTDIR}/_ext/1679150795/nmdrv.o ${OBJECTDIR}/_ext/1679150795/nmspi.o ${OBJECTDIR}/_ext/1679150795/spi_flash.o ${OBJECTDIR}/_ext/1022178492/PMK.o ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o

# Source Files
SOURCEFILES=../../../../../common/cpu_endian.c ../../../../../common/os_port_freertos.c ../../../../../common/date_time.c ../../../../../common/str.c ../../../../../common/path.c ../../../../../common/resource_manager.c ../../../../../cyclone_crypto/hash/md5.c ../../../../../cyclone_crypto/hash/sha1.c ../../../../../cyclone_crypto/hash/sha224.c ../../../../../cyclone_crypto/hash/sha256.c ../../../../../cyclone_crypto/hash/sha384.c ../../../../../cyclone_crypto/hash/sha512.c ../../../../../cyclone_crypto/mac/hmac.c ../../../../../cyclone_crypto/cipher/rc4.c ../../../../../cyclone_crypto/cipher/idea.c ../../../../../cyclone_crypto/cipher/des.c ../../../../../cyclone_crypto/cipher/des3.c ../../../../../cyclone_crypto/cipher/aes.c ../../../../../cyclone_crypto/cipher/camellia.c ../../../../../cyclone_crypto/cipher/seed.c ../../../../../cyclone_crypto/cipher/aria.c ../../../../../cyclone_crypto/cipher_mode/cbc.c ../../../../../cyclone_crypto/aead/ccm.c ../../../../../cyclone_crypto/aead/gcm.c ../../../../../cyclone_crypto/cipher/chacha.c ../../../../../cyclone_crypto/mac/poly1305.c ../../../../../cyclone_crypto/aead/chacha20_poly1305.c ../../../../../cyclone_crypto/pkc/dh.c ../../../../../cyclone_crypto/pkc/rsa.c ../../../../../cyclone_crypto/pkc/dsa.c ../../../../../cyclone_crypto/ecc/ec.c ../../../../../cyclone_crypto/ecc/ec_curves.c ../../../../../cyclone_crypto/ecc/ecdh.c ../../../../../cyclone_crypto/ecc/ecdsa.c ../../../../../cyclone_crypto/ecc/eddsa.c ../../../../../cyclone_crypto/ecc/curve25519.c ../../../../../cyclone_crypto/ecc/curve448.c ../../../../../cyclone_crypto/ecc/x25519.c ../../../../../cyclone_crypto/ecc/x448.c ../../../../../cyclone_crypto/ecc/ed25519.c ../../../../../cyclone_crypto/ecc/ed448.c ../../../../../cyclone_crypto/mpi/mpi.c ../../../../../cyclone_crypto/encoding/base64.c ../../../../../cyclone_crypto/encoding/asn1.c ../../../../../cyclone_crypto/encoding/oid.c ../../../../../cyclone_crypto/pkix/pem_import.c ../../../../../cyclone_crypto/pkix/pkcs8_key_parse.c ../../../../../cyclone_crypto/pkix/x509_key_parse.c ../../../../../cyclone_crypto/pkix/x509_cert_parse.c ../../../../../cyclone_crypto/pkix/x509_cert_validate.c ../../../../../cyclone_crypto/pkix/x509_crl_parse.c ../../../../../cyclone_crypto/pkix/x509_crl_validate.c ../../../../../cyclone_crypto/pkix/x509_common.c ../../../../../cyclone_crypto/kdf/hkdf.c ../../../../../cyclone_crypto/rng/yarrow.c ../../../../../cyclone_ssl/tls.c ../../../../../cyclone_ssl/tls_cipher_suites.c ../../../../../cyclone_ssl/tls_handshake.c ../../../../../cyclone_ssl/tls_client.c ../../../../../cyclone_ssl/tls_client_fsm.c ../../../../../cyclone_ssl/tls_client_extensions.c ../../../../../cyclone_ssl/tls_client_misc.c ../../../../../cyclone_ssl/tls_server.c ../../../../../cyclone_ssl/tls_server_fsm.c ../../../../../cyclone_ssl/tls_server_extensions.c ../../../../../cyclone_ssl/tls_server_misc.c ../../../../../cyclone_ssl/tls_common.c ../../../../../cyclone_ssl/tls_extensions.c ../../../../../cyclone_ssl/tls_certificate.c ../../../../../cyclone_ssl/tls_signature.c ../../../../../cyclone_ssl/tls_key_material.c ../../../../../cyclone_ssl/tls_transcript_hash.c ../../../../../cyclone_ssl/tls_cache.c ../../../../../cyclone_ssl/tls_ticket.c ../../../../../cyclone_ssl/tls_ffdhe.c ../../../../../cyclone_ssl/tls_record.c ../../../../../cyclone_ssl/tls_record_encryption.c ../../../../../cyclone_ssl/tls_record_decryption.c ../../../../../cyclone_ssl/tls_misc.c ../../../../../cyclone_ssl/tls13_client.c ../../../../../cyclone_ssl/tls13_client_extensions.c ../../../../../cyclone_ssl/tls13_client_misc.c ../../../../../cyclone_ssl/tls13_server.c ../../../../../cyclone_ssl/tls13_server_extensions.c ../../../../../cyclone_ssl/tls13_server_misc.c ../../../../../cyclone_ssl/tls13_common.c ../../../../../cyclone_ssl/tls13_key_material.c ../../../../../cyclone_ssl/tls13_misc.c ../../../../../cyclone_ssl/ssl_misc.c ../../../../../cyclone_tcp/core/net.c ../../../../../cyclone_tcp/core/net_mem.c ../../../../../cyclone_tcp/drivers/mac/pic32mz_eth_driver.c ../../../../../cyclone_tcp/drivers/phy/lan8720_driver.c ../../../../../cyclone_tcp/drivers/wifi/wilc1000_driver.c ../../../../../cyclone_tcp/core/nic.c ../../../../../cyclone_tcp/core/ethernet.c ../../../../../cyclone_tcp/core/ethernet_misc.c ../../../../../cyclone_tcp/ipv4/arp.c ../../../../../cyclone_tcp/ipv4/ipv4.c ../../../../../cyclone_tcp/ipv4/ipv4_frag.c ../../../../../cyclone_tcp/ipv4/ipv4_misc.c ../../../../../cyclone_tcp/ipv4/icmp.c ../../../../../cyclone_tcp/ipv4/igmp.c ../../../../../cyclone_tcp/ipv6/ipv6.c ../../../../../cyclone_tcp/ipv6/ipv6_frag.c ../../../../../cyclone_tcp/ipv6/ipv6_misc.c ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c ../../../../../cyclone_tcp/ipv6/icmpv6.c ../../../../../cyclone_tcp/ipv6/mld.c ../../../../../cyclone_tcp/ipv6/ndp.c ../../../../../cyclone_tcp/ipv6/ndp_cache.c ../../../../../cyclone_tcp/ipv6/ndp_misc.c ../../../../../cyclone_tcp/ipv6/ndp_router_adv.c ../../../../../cyclone_tcp/ipv6/slaac.c ../../../../../cyclone_tcp/core/ip.c ../../../../../cyclone_tcp/core/tcp.c ../../../../../cyclone_tcp/core/tcp_fsm.c ../../../../../cyclone_tcp/core/tcp_misc.c ../../../../../cyclone_tcp/core/tcp_timer.c ../../../../../cyclone_tcp/core/udp.c ../../../../../cyclone_tcp/core/socket.c ../../../../../cyclone_tcp/core/bsd_socket.c ../../../../../cyclone_tcp/core/raw_socket.c ../../../../../cyclone_tcp/dns/dns_cache.c ../../../../../cyclone_tcp/dns/dns_client.c ../../../../../cyclone_tcp/dns/dns_common.c ../../../../../cyclone_tcp/dns/dns_debug.c ../../../../../cyclone_tcp/mdns/mdns_client.c ../../../../../cyclone_tcp/mdns/mdns_responder.c ../../../../../cyclone_tcp/mdns/mdns_common.c ../../../../../cyclone_tcp/netbios/nbns_client.c ../../../../../cyclone_tcp/netbios/nbns_responder.c ../../../../../cyclone_tcp/netbios/nbns_common.c ../../../../../cyclone_tcp/llmnr/llmnr_client.c ../../../../../cyclone_tcp/llmnr/llmnr_responder.c ../../../../../cyclone_tcp/llmnr/llmnr_common.c ../../../../../cyclone_tcp/dhcp/dhcp_client.c ../../../../../cyclone_tcp/dhcp/dhcp_server.c ../../../../../cyclone_tcp/dhcp/dhcp_common.c ../../../../../cyclone_tcp/dhcp/dhcp_debug.c ../../../../../cyclone_tcp/http/http_server.c ../../../../../cyclone_tcp/http/http_server_auth.c ../../../../../cyclone_tcp/http/http_server_misc.c ../../../../../cyclone_tcp/http/mime.c ../../../../../cyclone_tcp/http/ssi.c ../../../../../cyclone_tcp/mqtt/mqtt_client.c ../../../../../cyclone_tcp/mqtt/mqtt_client_misc.c ../../../../../cyclone_tcp/mqtt/mqtt_client_packet.c ../../../../../cyclone_tcp/mqtt/mqtt_client_transport.c ../../../../../cyclone_tcp/web_socket/web_socket.c ../../../../../cyclone_tcp/web_socket/web_socket_auth.c ../../../../../cyclone_tcp/web_socket/web_socket_frame.c ../../../../../cyclone_tcp/web_socket/web_socket_misc.c ../../../../../cyclone_tcp/web_socket/web_socket_transport.c ../src/main.c ../src/debug.c ../src/sprintf.c ../src/strtok_r.c ../src/eth_irq_wrapper.S ../src/ext1_irq_wrapper.S ../src/wilc1000_callbacks.c ../src/res.c ../../../../../third_party/freertos/portable/mplab/pic32mz/port.c ../../../../../third_party/freertos/portable/mplab/pic32mz/port_asm.S ../../../../../third_party/freertos/croutine.c ../../../../../third_party/freertos/list.c ../../../../../third_party/freertos/queue.c ../../../../../third_party/freertos/tasks.c ../../../../../third_party/freertos/timers.c ../../../../../third_party/freertos/portable/memmang/heap_3.c ../../../../../third_party/atmel/devices/wilc1000/bsp/source/nm_bsp_pic32mz.c ../../../../../third_party/atmel/devices/wilc1000/bus_wrapper/source/nm_bus_wrapper_pic32mz.c ../../../../../third_party/atmel/devices/wilc1000/common/source/nm_common.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_hif.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_periph.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_wifi.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmasic.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmbus.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmdrv.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmspi.c ../../../../../third_party/atmel/devices/wilc1000/driver/source/spi_flash.c ../../../../../third_party/atmel/devices/wilc1000/drv_hash/PMK.c ../../../../../third_party/atmel/devices/wilc1000/os/source/m2m_wifi_ex.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM100
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o: ../src/eth_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ../src/eth_irq_wrapper.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
	
${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o: ../src/ext1_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o ../src/ext1_irq_wrapper.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
	
${OBJECTDIR}/_ext/23001898/port_asm.o: ../../../../../third_party/freertos/portable/mplab/pic32mz/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/23001898" 
	@${RM} ${OBJECTDIR}/_ext/23001898/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/23001898/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/23001898/port_asm.o.ok ${OBJECTDIR}/_ext/23001898/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/23001898/port_asm.o.d" "${OBJECTDIR}/_ext/23001898/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/23001898/port_asm.o.d"  -o ${OBJECTDIR}/_ext/23001898/port_asm.o ../../../../../third_party/freertos/portable/mplab/pic32mz/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/23001898/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 
	
else
${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o: ../src/eth_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ../src/eth_irq_wrapper.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d",--gdwarf-2 
	
${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o: ../src/ext1_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o ../src/ext1_irq_wrapper.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/ext1_irq_wrapper.o.asm.d",--gdwarf-2 
	
${OBJECTDIR}/_ext/23001898/port_asm.o: ../../../../../third_party/freertos/portable/mplab/pic32mz/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/23001898" 
	@${RM} ${OBJECTDIR}/_ext/23001898/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/23001898/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/23001898/port_asm.o.ok ${OBJECTDIR}/_ext/23001898/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/23001898/port_asm.o.d" "${OBJECTDIR}/_ext/23001898/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/23001898/port_asm.o.d"  -o ${OBJECTDIR}/_ext/23001898/port_asm.o ../../../../../third_party/freertos/portable/mplab/pic32mz/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/23001898/port_asm.o.asm.d",--gdwarf-2 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/360186330/cpu_endian.o: ../../../../../common/cpu_endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/cpu_endian.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/cpu_endian.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/cpu_endian.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/cpu_endian.o.d" -o ${OBJECTDIR}/_ext/360186330/cpu_endian.o ../../../../../common/cpu_endian.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/os_port_freertos.o: ../../../../../common/os_port_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" -o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ../../../../../common/os_port_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/date_time.o: ../../../../../common/date_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/date_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/date_time.o.d" -o ${OBJECTDIR}/_ext/360186330/date_time.o ../../../../../common/date_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/str.o: ../../../../../common/str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/str.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/str.o.d" -o ${OBJECTDIR}/_ext/360186330/str.o ../../../../../common/str.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/path.o: ../../../../../common/path.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/path.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/path.o.d" -o ${OBJECTDIR}/_ext/360186330/path.o ../../../../../common/path.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/resource_manager.o: ../../../../../common/resource_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/resource_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/resource_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/resource_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/resource_manager.o.d" -o ${OBJECTDIR}/_ext/360186330/resource_manager.o ../../../../../common/resource_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/md5.o: ../../../../../cyclone_crypto/hash/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/md5.o.d" -o ${OBJECTDIR}/_ext/120521611/md5.o ../../../../../cyclone_crypto/hash/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha1.o: ../../../../../cyclone_crypto/hash/sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha1.o.d" -o ${OBJECTDIR}/_ext/120521611/sha1.o ../../../../../cyclone_crypto/hash/sha1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha224.o: ../../../../../cyclone_crypto/hash/sha224.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha224.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha224.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha224.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha224.o.d" -o ${OBJECTDIR}/_ext/120521611/sha224.o ../../../../../cyclone_crypto/hash/sha224.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha256.o: ../../../../../cyclone_crypto/hash/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha256.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha256.o.d" -o ${OBJECTDIR}/_ext/120521611/sha256.o ../../../../../cyclone_crypto/hash/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha384.o: ../../../../../cyclone_crypto/hash/sha384.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha384.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha384.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha384.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha384.o.d" -o ${OBJECTDIR}/_ext/120521611/sha384.o ../../../../../cyclone_crypto/hash/sha384.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha512.o: ../../../../../cyclone_crypto/hash/sha512.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha512.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha512.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha512.o.d" -o ${OBJECTDIR}/_ext/120521611/sha512.o ../../../../../cyclone_crypto/hash/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273211656/hmac.o: ../../../../../cyclone_crypto/mac/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273211656" 
	@${RM} ${OBJECTDIR}/_ext/273211656/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/273211656/hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273211656/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273211656/hmac.o.d" -o ${OBJECTDIR}/_ext/273211656/hmac.o ../../../../../cyclone_crypto/mac/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/rc4.o: ../../../../../cyclone_crypto/cipher/rc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/rc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/rc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/rc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/rc4.o.d" -o ${OBJECTDIR}/_ext/7005106/rc4.o ../../../../../cyclone_crypto/cipher/rc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/idea.o: ../../../../../cyclone_crypto/cipher/idea.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/idea.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/idea.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/idea.o.d" -o ${OBJECTDIR}/_ext/7005106/idea.o ../../../../../cyclone_crypto/cipher/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/des.o: ../../../../../cyclone_crypto/cipher/des.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/des.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/des.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/des.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/des.o.d" -o ${OBJECTDIR}/_ext/7005106/des.o ../../../../../cyclone_crypto/cipher/des.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/des3.o: ../../../../../cyclone_crypto/cipher/des3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/des3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/des3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/des3.o.d" -o ${OBJECTDIR}/_ext/7005106/des3.o ../../../../../cyclone_crypto/cipher/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/aes.o: ../../../../../cyclone_crypto/cipher/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/aes.o.d" -o ${OBJECTDIR}/_ext/7005106/aes.o ../../../../../cyclone_crypto/cipher/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/camellia.o: ../../../../../cyclone_crypto/cipher/camellia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/camellia.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/camellia.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/camellia.o.d" -o ${OBJECTDIR}/_ext/7005106/camellia.o ../../../../../cyclone_crypto/cipher/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/seed.o: ../../../../../cyclone_crypto/cipher/seed.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/seed.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/seed.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/seed.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/seed.o.d" -o ${OBJECTDIR}/_ext/7005106/seed.o ../../../../../cyclone_crypto/cipher/seed.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/aria.o: ../../../../../cyclone_crypto/cipher/aria.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/aria.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/aria.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/aria.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/aria.o.d" -o ${OBJECTDIR}/_ext/7005106/aria.o ../../../../../cyclone_crypto/cipher/aria.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1125617168/cbc.o: ../../../../../cyclone_crypto/cipher_mode/cbc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1125617168" 
	@${RM} ${OBJECTDIR}/_ext/1125617168/cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1125617168/cbc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1125617168/cbc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1125617168/cbc.o.d" -o ${OBJECTDIR}/_ext/1125617168/cbc.o ../../../../../cyclone_crypto/cipher_mode/cbc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120726866/ccm.o: ../../../../../cyclone_crypto/aead/ccm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120726866" 
	@${RM} ${OBJECTDIR}/_ext/120726866/ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/120726866/ccm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120726866/ccm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120726866/ccm.o.d" -o ${OBJECTDIR}/_ext/120726866/ccm.o ../../../../../cyclone_crypto/aead/ccm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120726866/gcm.o: ../../../../../cyclone_crypto/aead/gcm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120726866" 
	@${RM} ${OBJECTDIR}/_ext/120726866/gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/120726866/gcm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120726866/gcm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120726866/gcm.o.d" -o ${OBJECTDIR}/_ext/120726866/gcm.o ../../../../../cyclone_crypto/aead/gcm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/chacha.o: ../../../../../cyclone_crypto/cipher/chacha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/chacha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/chacha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/chacha.o.d" -o ${OBJECTDIR}/_ext/7005106/chacha.o ../../../../../cyclone_crypto/cipher/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273211656/poly1305.o: ../../../../../cyclone_crypto/mac/poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273211656" 
	@${RM} ${OBJECTDIR}/_ext/273211656/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/273211656/poly1305.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273211656/poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273211656/poly1305.o.d" -o ${OBJECTDIR}/_ext/273211656/poly1305.o ../../../../../cyclone_crypto/mac/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o: ../../../../../cyclone_crypto/aead/chacha20_poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120726866" 
	@${RM} ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o ../../../../../cyclone_crypto/aead/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273214849/dh.o: ../../../../../cyclone_crypto/pkc/dh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273214849" 
	@${RM} ${OBJECTDIR}/_ext/273214849/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/273214849/dh.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273214849/dh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273214849/dh.o.d" -o ${OBJECTDIR}/_ext/273214849/dh.o ../../../../../cyclone_crypto/pkc/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273214849/rsa.o: ../../../../../cyclone_crypto/pkc/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273214849" 
	@${RM} ${OBJECTDIR}/_ext/273214849/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273214849/rsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273214849/rsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273214849/rsa.o.d" -o ${OBJECTDIR}/_ext/273214849/rsa.o ../../../../../cyclone_crypto/pkc/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273214849/dsa.o: ../../../../../cyclone_crypto/pkc/dsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273214849" 
	@${RM} ${OBJECTDIR}/_ext/273214849/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273214849/dsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273214849/dsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273214849/dsa.o.d" -o ${OBJECTDIR}/_ext/273214849/dsa.o ../../../../../cyclone_crypto/pkc/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ec.o: ../../../../../cyclone_crypto/ecc/ec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ec.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ec.o.d" -o ${OBJECTDIR}/_ext/273204030/ec.o ../../../../../cyclone_crypto/ecc/ec.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ec_curves.o: ../../../../../cyclone_crypto/ecc/ec_curves.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec_curves.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec_curves.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ec_curves.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ec_curves.o.d" -o ${OBJECTDIR}/_ext/273204030/ec_curves.o ../../../../../cyclone_crypto/ecc/ec_curves.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ecdh.o: ../../../../../cyclone_crypto/ecc/ecdh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdh.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ecdh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ecdh.o.d" -o ${OBJECTDIR}/_ext/273204030/ecdh.o ../../../../../cyclone_crypto/ecc/ecdh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ecdsa.o: ../../../../../cyclone_crypto/ecc/ecdsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ecdsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ecdsa.o.d" -o ${OBJECTDIR}/_ext/273204030/ecdsa.o ../../../../../cyclone_crypto/ecc/ecdsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/eddsa.o: ../../../../../cyclone_crypto/ecc/eddsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/eddsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/eddsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/eddsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/eddsa.o.d" -o ${OBJECTDIR}/_ext/273204030/eddsa.o ../../../../../cyclone_crypto/ecc/eddsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/curve25519.o: ../../../../../cyclone_crypto/ecc/curve25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve25519.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/curve25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/curve25519.o.d" -o ${OBJECTDIR}/_ext/273204030/curve25519.o ../../../../../cyclone_crypto/ecc/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/curve448.o: ../../../../../cyclone_crypto/ecc/curve448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve448.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/curve448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/curve448.o.d" -o ${OBJECTDIR}/_ext/273204030/curve448.o ../../../../../cyclone_crypto/ecc/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/x25519.o: ../../../../../cyclone_crypto/ecc/x25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/x25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/x25519.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/x25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/x25519.o.d" -o ${OBJECTDIR}/_ext/273204030/x25519.o ../../../../../cyclone_crypto/ecc/x25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/x448.o: ../../../../../cyclone_crypto/ecc/x448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/x448.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/x448.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/x448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/x448.o.d" -o ${OBJECTDIR}/_ext/273204030/x448.o ../../../../../cyclone_crypto/ecc/x448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ed25519.o: ../../../../../cyclone_crypto/ecc/ed25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed25519.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ed25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ed25519.o.d" -o ${OBJECTDIR}/_ext/273204030/ed25519.o ../../../../../cyclone_crypto/ecc/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ed448.o: ../../../../../cyclone_crypto/ecc/ed448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed448.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ed448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ed448.o.d" -o ${OBJECTDIR}/_ext/273204030/ed448.o ../../../../../cyclone_crypto/ecc/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273212127/mpi.o: ../../../../../cyclone_crypto/mpi/mpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273212127" 
	@${RM} ${OBJECTDIR}/_ext/273212127/mpi.o.d 
	@${RM} ${OBJECTDIR}/_ext/273212127/mpi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273212127/mpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273212127/mpi.o.d" -o ${OBJECTDIR}/_ext/273212127/mpi.o ../../../../../cyclone_crypto/mpi/mpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1404394810/base64.o: ../../../../../cyclone_crypto/encoding/base64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404394810" 
	@${RM} ${OBJECTDIR}/_ext/1404394810/base64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404394810/base64.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404394810/base64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1404394810/base64.o.d" -o ${OBJECTDIR}/_ext/1404394810/base64.o ../../../../../cyclone_crypto/encoding/base64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1404394810/asn1.o: ../../../../../cyclone_crypto/encoding/asn1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404394810" 
	@${RM} ${OBJECTDIR}/_ext/1404394810/asn1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404394810/asn1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404394810/asn1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1404394810/asn1.o.d" -o ${OBJECTDIR}/_ext/1404394810/asn1.o ../../../../../cyclone_crypto/encoding/asn1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1404394810/oid.o: ../../../../../cyclone_crypto/encoding/oid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404394810" 
	@${RM} ${OBJECTDIR}/_ext/1404394810/oid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404394810/oid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404394810/oid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1404394810/oid.o.d" -o ${OBJECTDIR}/_ext/1404394810/oid.o ../../../../../cyclone_crypto/encoding/oid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/pem_import.o: ../../../../../cyclone_crypto/pkix/pem_import.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/pem_import.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/pem_import.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/pem_import.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/pem_import.o.d" -o ${OBJECTDIR}/_ext/120273967/pem_import.o ../../../../../cyclone_crypto/pkix/pem_import.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o: ../../../../../cyclone_crypto/pkix/pkcs8_key_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o ../../../../../cyclone_crypto/pkix/pkcs8_key_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_key_parse.o: ../../../../../cyclone_crypto/pkix/x509_key_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_key_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_key_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_key_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_key_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_key_parse.o ../../../../../cyclone_crypto/pkix/x509_key_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_cert_parse.o: ../../../../../cyclone_crypto/pkix/x509_cert_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_cert_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_cert_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o ../../../../../cyclone_crypto/pkix/x509_cert_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_cert_validate.o: ../../../../../cyclone_crypto/pkix/x509_cert_validate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_cert_validate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_cert_validate.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o ../../../../../cyclone_crypto/pkix/x509_cert_validate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_crl_parse.o: ../../../../../cyclone_crypto/pkix/x509_crl_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_crl_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_crl_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o ../../../../../cyclone_crypto/pkix/x509_crl_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_crl_validate.o: ../../../../../cyclone_crypto/pkix/x509_crl_validate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_crl_validate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_crl_validate.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o ../../../../../cyclone_crypto/pkix/x509_crl_validate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_common.o: ../../../../../cyclone_crypto/pkix/x509_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_common.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_common.o ../../../../../cyclone_crypto/pkix/x509_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273209830/hkdf.o: ../../../../../cyclone_crypto/kdf/hkdf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273209830" 
	@${RM} ${OBJECTDIR}/_ext/273209830/hkdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/273209830/hkdf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273209830/hkdf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273209830/hkdf.o.d" -o ${OBJECTDIR}/_ext/273209830/hkdf.o ../../../../../cyclone_crypto/kdf/hkdf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273216868/yarrow.o: ../../../../../cyclone_crypto/rng/yarrow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273216868" 
	@${RM} ${OBJECTDIR}/_ext/273216868/yarrow.o.d 
	@${RM} ${OBJECTDIR}/_ext/273216868/yarrow.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273216868/yarrow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273216868/yarrow.o.d" -o ${OBJECTDIR}/_ext/273216868/yarrow.o ../../../../../cyclone_crypto/rng/yarrow.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls.o: ../../../../../cyclone_ssl/tls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls.o.d" -o ${OBJECTDIR}/_ext/476983781/tls.o ../../../../../cyclone_ssl/tls.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o: ../../../../../cyclone_ssl/tls_cipher_suites.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o ../../../../../cyclone_ssl/tls_cipher_suites.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_handshake.o: ../../../../../cyclone_ssl/tls_handshake.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_handshake.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_handshake.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_handshake.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_handshake.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_handshake.o ../../../../../cyclone_ssl/tls_handshake.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client.o: ../../../../../cyclone_ssl/tls_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client.o ../../../../../cyclone_ssl/tls_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client_fsm.o: ../../../../../cyclone_ssl/tls_client_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client_fsm.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o ../../../../../cyclone_ssl/tls_client_fsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client_extensions.o: ../../../../../cyclone_ssl/tls_client_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o ../../../../../cyclone_ssl/tls_client_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client_misc.o: ../../../../../cyclone_ssl/tls_client_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client_misc.o ../../../../../cyclone_ssl/tls_client_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server.o: ../../../../../cyclone_ssl/tls_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server.o ../../../../../cyclone_ssl/tls_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server_fsm.o: ../../../../../cyclone_ssl/tls_server_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server_fsm.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o ../../../../../cyclone_ssl/tls_server_fsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server_extensions.o: ../../../../../cyclone_ssl/tls_server_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o ../../../../../cyclone_ssl/tls_server_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server_misc.o: ../../../../../cyclone_ssl/tls_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server_misc.o ../../../../../cyclone_ssl/tls_server_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_common.o: ../../../../../cyclone_ssl/tls_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_common.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_common.o ../../../../../cyclone_ssl/tls_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_extensions.o: ../../../../../cyclone_ssl/tls_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_extensions.o ../../../../../cyclone_ssl/tls_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_certificate.o: ../../../../../cyclone_ssl/tls_certificate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_certificate.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_certificate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_certificate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_certificate.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_certificate.o ../../../../../cyclone_ssl/tls_certificate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_signature.o: ../../../../../cyclone_ssl/tls_signature.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_signature.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_signature.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_signature.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_signature.o ../../../../../cyclone_ssl/tls_signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_key_material.o: ../../../../../cyclone_ssl/tls_key_material.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_key_material.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_key_material.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_key_material.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_key_material.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_key_material.o ../../../../../cyclone_ssl/tls_key_material.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o: ../../../../../cyclone_ssl/tls_transcript_hash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o ../../../../../cyclone_ssl/tls_transcript_hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_cache.o: ../../../../../cyclone_ssl/tls_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_cache.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_cache.o ../../../../../cyclone_ssl/tls_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_ticket.o: ../../../../../cyclone_ssl/tls_ticket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ticket.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ticket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_ticket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_ticket.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_ticket.o ../../../../../cyclone_ssl/tls_ticket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_ffdhe.o: ../../../../../cyclone_ssl/tls_ffdhe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_ffdhe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_ffdhe.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o ../../../../../cyclone_ssl/tls_ffdhe.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_record.o: ../../../../../cyclone_ssl/tls_record.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_record.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_record.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_record.o ../../../../../cyclone_ssl/tls_record.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_record_encryption.o: ../../../../../cyclone_ssl/tls_record_encryption.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_record_encryption.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_record_encryption.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o ../../../../../cyclone_ssl/tls_record_encryption.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_record_decryption.o: ../../../../../cyclone_ssl/tls_record_decryption.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_record_decryption.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_record_decryption.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o ../../../../../cyclone_ssl/tls_record_decryption.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_misc.o: ../../../../../cyclone_ssl/tls_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_misc.o ../../../../../cyclone_ssl/tls_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_client.o: ../../../../../cyclone_ssl/tls13_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_client.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_client.o ../../../../../cyclone_ssl/tls13_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o: ../../../../../cyclone_ssl/tls13_client_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o ../../../../../cyclone_ssl/tls13_client_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_client_misc.o: ../../../../../cyclone_ssl/tls13_client_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_client_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_client_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o ../../../../../cyclone_ssl/tls13_client_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_server.o: ../../../../../cyclone_ssl/tls13_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_server.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_server.o ../../../../../cyclone_ssl/tls13_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o: ../../../../../cyclone_ssl/tls13_server_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o ../../../../../cyclone_ssl/tls13_server_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_server_misc.o: ../../../../../cyclone_ssl/tls13_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_server_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o ../../../../../cyclone_ssl/tls13_server_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_common.o: ../../../../../cyclone_ssl/tls13_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_common.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_common.o ../../../../../cyclone_ssl/tls13_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_key_material.o: ../../../../../cyclone_ssl/tls13_key_material.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_key_material.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_key_material.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_key_material.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_key_material.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_key_material.o ../../../../../cyclone_ssl/tls13_key_material.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_misc.o: ../../../../../cyclone_ssl/tls13_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_misc.o ../../../../../cyclone_ssl/tls13_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/ssl_misc.o: ../../../../../cyclone_ssl/ssl_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/ssl_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/ssl_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/ssl_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/ssl_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/ssl_misc.o ../../../../../cyclone_ssl/ssl_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/net.o: ../../../../../cyclone_tcp/core/net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net.o.d" -o ${OBJECTDIR}/_ext/1079766828/net.o ../../../../../cyclone_tcp/core/net.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/net_mem.o: ../../../../../cyclone_tcp/core/net_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" -o ${OBJECTDIR}/_ext/1079766828/net_mem.o ../../../../../cyclone_tcp/core/net_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o: ../../../../../cyclone_tcp/drivers/mac/pic32mz_eth_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/37329846" 
	@${RM} ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o.d" -o ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o ../../../../../cyclone_tcp/drivers/mac/pic32mz_eth_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/37332968/lan8720_driver.o: ../../../../../cyclone_tcp/drivers/phy/lan8720_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/37332968" 
	@${RM} ${OBJECTDIR}/_ext/37332968/lan8720_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/37332968/lan8720_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/37332968/lan8720_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/37332968/lan8720_driver.o.d" -o ${OBJECTDIR}/_ext/37332968/lan8720_driver.o ../../../../../cyclone_tcp/drivers/phy/lan8720_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o: ../../../../../cyclone_tcp/drivers/wifi/wilc1000_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1157531022" 
	@${RM} ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o.d" -o ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o ../../../../../cyclone_tcp/drivers/wifi/wilc1000_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/nic.o: ../../../../../cyclone_tcp/core/nic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/nic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/nic.o.d" -o ${OBJECTDIR}/_ext/1079766828/nic.o ../../../../../cyclone_tcp/core/nic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/ethernet.o: ../../../../../cyclone_tcp/core/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet.o ../../../../../cyclone_tcp/core/ethernet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/ethernet_misc.o: ../../../../../cyclone_tcp/core/ethernet_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o ../../../../../cyclone_tcp/core/ethernet_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/arp.o: ../../../../../cyclone_tcp/ipv4/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/arp.o.d" -o ${OBJECTDIR}/_ext/1079587046/arp.o ../../../../../cyclone_tcp/ipv4/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/ipv4.o: ../../../../../cyclone_tcp/ipv4/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4.o ../../../../../cyclone_tcp/ipv4/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/ipv4_frag.o: ../../../../../cyclone_tcp/ipv4/ipv4_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ../../../../../cyclone_tcp/ipv4/ipv4_frag.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/ipv4_misc.o: ../../../../../cyclone_tcp/ipv4/ipv4_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_misc.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o ../../../../../cyclone_tcp/ipv4/ipv4_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/icmp.o: ../../../../../cyclone_tcp/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/icmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/icmp.o ../../../../../cyclone_tcp/ipv4/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/igmp.o: ../../../../../cyclone_tcp/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/igmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/igmp.o ../../../../../cyclone_tcp/ipv4/igmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6.o: ../../../../../cyclone_tcp/ipv6/ipv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6.o ../../../../../cyclone_tcp/ipv6/ipv6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6_frag.o: ../../../../../cyclone_tcp/ipv6/ipv6_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ../../../../../cyclone_tcp/ipv6/ipv6_frag.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6_misc.o: ../../../../../cyclone_tcp/ipv6/ipv6_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ../../../../../cyclone_tcp/ipv6/ipv6_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o: ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/icmpv6.o: ../../../../../cyclone_tcp/ipv6/icmpv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ../../../../../cyclone_tcp/ipv6/icmpv6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/mld.o: ../../../../../cyclone_tcp/ipv6/mld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/mld.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/mld.o.d" -o ${OBJECTDIR}/_ext/1079587044/mld.o ../../../../../cyclone_tcp/ipv6/mld.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp.o: ../../../../../cyclone_tcp/ipv6/ndp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp.o ../../../../../cyclone_tcp/ipv6/ndp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp_cache.o: ../../../../../cyclone_tcp/ipv6/ndp_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ../../../../../cyclone_tcp/ipv6/ndp_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp_misc.o: ../../../../../cyclone_tcp/ipv6/ndp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ../../../../../cyclone_tcp/ipv6/ndp_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o: ../../../../../cyclone_tcp/ipv6/ndp_router_adv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o ../../../../../cyclone_tcp/ipv6/ndp_router_adv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/slaac.o: ../../../../../cyclone_tcp/ipv6/slaac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/slaac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/slaac.o.d" -o ${OBJECTDIR}/_ext/1079587044/slaac.o ../../../../../cyclone_tcp/ipv6/slaac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/ip.o: ../../../../../cyclone_tcp/core/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ip.o.d" -o ${OBJECTDIR}/_ext/1079766828/ip.o ../../../../../cyclone_tcp/core/ip.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp.o: ../../../../../cyclone_tcp/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp.o ../../../../../cyclone_tcp/core/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp_fsm.o: ../../../../../cyclone_tcp/core/tcp_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ../../../../../cyclone_tcp/core/tcp_fsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp_misc.o: ../../../../../cyclone_tcp/core/tcp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ../../../../../cyclone_tcp/core/tcp_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp_timer.o: ../../../../../cyclone_tcp/core/tcp_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ../../../../../cyclone_tcp/core/tcp_timer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/udp.o: ../../../../../cyclone_tcp/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/udp.o.d" -o ${OBJECTDIR}/_ext/1079766828/udp.o ../../../../../cyclone_tcp/core/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/socket.o: ../../../../../cyclone_tcp/core/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/socket.o ../../../../../cyclone_tcp/core/socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/bsd_socket.o: ../../../../../cyclone_tcp/core/bsd_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ../../../../../cyclone_tcp/core/bsd_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/raw_socket.o: ../../../../../cyclone_tcp/core/raw_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ../../../../../cyclone_tcp/core/raw_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_cache.o: ../../../../../cyclone_tcp/dns/dns_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_cache.o ../../../../../cyclone_tcp/dns/dns_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_client.o: ../../../../../cyclone_tcp/dns/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_client.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_client.o ../../../../../cyclone_tcp/dns/dns_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_common.o: ../../../../../cyclone_tcp/dns/dns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_common.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_common.o ../../../../../cyclone_tcp/dns/dns_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_debug.o: ../../../../../cyclone_tcp/dns/dns_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_debug.o ../../../../../cyclone_tcp/dns/dns_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079479599/mdns_client.o: ../../../../../cyclone_tcp/mdns/mdns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ../../../../../cyclone_tcp/mdns/mdns_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079479599/mdns_responder.o: ../../../../../cyclone_tcp/mdns/mdns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ../../../../../cyclone_tcp/mdns/mdns_responder.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079479599/mdns_common.o: ../../../../../cyclone_tcp/mdns/mdns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ../../../../../cyclone_tcp/mdns/mdns_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1435316685/nbns_client.o: ../../../../../cyclone_tcp/netbios/nbns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ../../../../../cyclone_tcp/netbios/nbns_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1435316685/nbns_responder.o: ../../../../../cyclone_tcp/netbios/nbns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ../../../../../cyclone_tcp/netbios/nbns_responder.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1435316685/nbns_common.o: ../../../../../cyclone_tcp/netbios/nbns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ../../../../../cyclone_tcp/netbios/nbns_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/895184604/llmnr_client.o: ../../../../../cyclone_tcp/llmnr/llmnr_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/895184604" 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/895184604/llmnr_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/895184604/llmnr_client.o.d" -o ${OBJECTDIR}/_ext/895184604/llmnr_client.o ../../../../../cyclone_tcp/llmnr/llmnr_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/895184604/llmnr_responder.o: ../../../../../cyclone_tcp/llmnr/llmnr_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/895184604" 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/895184604/llmnr_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/895184604/llmnr_responder.o.d" -o ${OBJECTDIR}/_ext/895184604/llmnr_responder.o ../../../../../cyclone_tcp/llmnr/llmnr_responder.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/895184604/llmnr_common.o: ../../../../../cyclone_tcp/llmnr/llmnr_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/895184604" 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/895184604/llmnr_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/895184604/llmnr_common.o.d" -o ${OBJECTDIR}/_ext/895184604/llmnr_common.o ../../../../../cyclone_tcp/llmnr/llmnr_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_client.o: ../../../../../cyclone_tcp/dhcp/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ../../../../../cyclone_tcp/dhcp/dhcp_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_server.o: ../../../../../cyclone_tcp/dhcp/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_server.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_server.o ../../../../../cyclone_tcp/dhcp/dhcp_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_common.o: ../../../../../cyclone_tcp/dhcp/dhcp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ../../../../../cyclone_tcp/dhcp/dhcp_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_debug.o: ../../../../../cyclone_tcp/dhcp/dhcp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ../../../../../cyclone_tcp/dhcp/dhcp_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/http_server.o: ../../../../../cyclone_tcp/http/http_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/http_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/http_server.o.d" -o ${OBJECTDIR}/_ext/1079612995/http_server.o ../../../../../cyclone_tcp/http/http_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/http_server_auth.o: ../../../../../cyclone_tcp/http/http_server_auth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_auth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_auth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/http_server_auth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/http_server_auth.o.d" -o ${OBJECTDIR}/_ext/1079612995/http_server_auth.o ../../../../../cyclone_tcp/http/http_server_auth.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/http_server_misc.o: ../../../../../cyclone_tcp/http/http_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/http_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/http_server_misc.o.d" -o ${OBJECTDIR}/_ext/1079612995/http_server_misc.o ../../../../../cyclone_tcp/http/http_server_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/mime.o: ../../../../../cyclone_tcp/http/mime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/mime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/mime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/mime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/mime.o.d" -o ${OBJECTDIR}/_ext/1079612995/mime.o ../../../../../cyclone_tcp/http/mime.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/ssi.o: ../../../../../cyclone_tcp/http/ssi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/ssi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/ssi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/ssi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/ssi.o.d" -o ${OBJECTDIR}/_ext/1079612995/ssi.o ../../../../../cyclone_tcp/http/ssi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client.o: ../../../../../cyclone_tcp/mqtt/mqtt_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client.o ../../../../../cyclone_tcp/mqtt/mqtt_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o: ../../../../../cyclone_tcp/mqtt/mqtt_client_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o ../../../../../cyclone_tcp/mqtt/mqtt_client_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o: ../../../../../cyclone_tcp/mqtt/mqtt_client_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o ../../../../../cyclone_tcp/mqtt/mqtt_client_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o: ../../../../../cyclone_tcp/mqtt/mqtt_client_transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o ../../../../../cyclone_tcp/mqtt/mqtt_client_transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket.o: ../../../../../cyclone_tcp/web_socket/web_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket.o ../../../../../cyclone_tcp/web_socket/web_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_auth.o: ../../../../../cyclone_tcp/web_socket/web_socket_auth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_auth.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_auth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_auth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_auth.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_auth.o ../../../../../cyclone_tcp/web_socket/web_socket_auth.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_frame.o: ../../../../../cyclone_tcp/web_socket/web_socket_frame.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_frame.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_frame.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_frame.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_frame.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_frame.o ../../../../../cyclone_tcp/web_socket/web_socket_frame.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_misc.o: ../../../../../cyclone_tcp/web_socket/web_socket_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_misc.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_misc.o ../../../../../cyclone_tcp/web_socket/web_socket_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_transport.o: ../../../../../cyclone_tcp/web_socket/web_socket_transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_transport.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_transport.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_transport.o ../../../../../cyclone_tcp/web_socket/web_socket_transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/sprintf.o: ../src/sprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" -o ${OBJECTDIR}/_ext/1360937237/sprintf.o ../src/sprintf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/strtok_r.o: ../src/strtok_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" -o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ../src/strtok_r.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o: ../src/wilc1000_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o.d" -o ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o ../src/wilc1000_callbacks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/res.o: ../src/res.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/res.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/res.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/res.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/res.o.d" -o ${OBJECTDIR}/_ext/1360937237/res.o ../src/res.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/23001898/port.o: ../../../../../third_party/freertos/portable/mplab/pic32mz/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/23001898" 
	@${RM} ${OBJECTDIR}/_ext/23001898/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/23001898/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/23001898/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/23001898/port.o.d" -o ${OBJECTDIR}/_ext/23001898/port.o ../../../../../third_party/freertos/portable/mplab/pic32mz/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/croutine.o: ../../../../../third_party/freertos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/croutine.o.d" -o ${OBJECTDIR}/_ext/986256546/croutine.o ../../../../../third_party/freertos/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/list.o: ../../../../../third_party/freertos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/list.o.d" -o ${OBJECTDIR}/_ext/986256546/list.o ../../../../../third_party/freertos/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/queue.o: ../../../../../third_party/freertos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/queue.o.d" -o ${OBJECTDIR}/_ext/986256546/queue.o ../../../../../third_party/freertos/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/tasks.o: ../../../../../third_party/freertos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/tasks.o.d" -o ${OBJECTDIR}/_ext/986256546/tasks.o ../../../../../third_party/freertos/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/timers.o: ../../../../../third_party/freertos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/timers.o.d" -o ${OBJECTDIR}/_ext/986256546/timers.o ../../../../../third_party/freertos/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/979089083/heap_3.o: ../../../../../third_party/freertos/portable/memmang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/979089083" 
	@${RM} ${OBJECTDIR}/_ext/979089083/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/979089083/heap_3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/979089083/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/979089083/heap_3.o.d" -o ${OBJECTDIR}/_ext/979089083/heap_3.o ../../../../../third_party/freertos/portable/memmang/heap_3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o: ../../../../../third_party/atmel/devices/wilc1000/bsp/source/nm_bsp_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/457051042" 
	@${RM} ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o.d" -o ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o ../../../../../third_party/atmel/devices/wilc1000/bsp/source/nm_bsp_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o: ../../../../../third_party/atmel/devices/wilc1000/bus_wrapper/source/nm_bus_wrapper_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700104339" 
	@${RM} ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o ../../../../../third_party/atmel/devices/wilc1000/bus_wrapper/source/nm_bus_wrapper_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1185106856/nm_common.o: ../../../../../third_party/atmel/devices/wilc1000/common/source/nm_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1185106856" 
	@${RM} ${OBJECTDIR}/_ext/1185106856/nm_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1185106856/nm_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1185106856/nm_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1185106856/nm_common.o.d" -o ${OBJECTDIR}/_ext/1185106856/nm_common.o ../../../../../third_party/atmel/devices/wilc1000/common/source/nm_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/m2m_hif.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_hif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_hif.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/m2m_hif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/m2m_hif.o.d" -o ${OBJECTDIR}/_ext/1679150795/m2m_hif.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_hif.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/m2m_periph.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_periph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_periph.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/m2m_periph.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/m2m_periph.o.d" -o ${OBJECTDIR}/_ext/1679150795/m2m_periph.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_periph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/m2m_wifi.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_wifi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/m2m_wifi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/m2m_wifi.o.d" -o ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_wifi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmasic.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmasic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmasic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmasic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmasic.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmasic.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmasic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmbus.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmbus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmbus.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmbus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmbus.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmbus.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmbus.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmdrv.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmdrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmdrv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmdrv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmdrv.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmdrv.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmdrv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmspi.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmspi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmspi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmspi.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmspi.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmspi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/spi_flash.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/spi_flash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/spi_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/spi_flash.o.d" -o ${OBJECTDIR}/_ext/1679150795/spi_flash.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/spi_flash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1022178492/PMK.o: ../../../../../third_party/atmel/devices/wilc1000/drv_hash/PMK.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1022178492" 
	@${RM} ${OBJECTDIR}/_ext/1022178492/PMK.o.d 
	@${RM} ${OBJECTDIR}/_ext/1022178492/PMK.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1022178492/PMK.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1022178492/PMK.o.d" -o ${OBJECTDIR}/_ext/1022178492/PMK.o ../../../../../third_party/atmel/devices/wilc1000/drv_hash/PMK.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o: ../../../../../third_party/atmel/devices/wilc1000/os/source/m2m_wifi_ex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640134129" 
	@${RM} ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o.d" -o ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o ../../../../../third_party/atmel/devices/wilc1000/os/source/m2m_wifi_ex.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
else
${OBJECTDIR}/_ext/360186330/cpu_endian.o: ../../../../../common/cpu_endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/cpu_endian.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/cpu_endian.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/cpu_endian.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/cpu_endian.o.d" -o ${OBJECTDIR}/_ext/360186330/cpu_endian.o ../../../../../common/cpu_endian.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/os_port_freertos.o: ../../../../../common/os_port_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" -o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ../../../../../common/os_port_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/date_time.o: ../../../../../common/date_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/date_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/date_time.o.d" -o ${OBJECTDIR}/_ext/360186330/date_time.o ../../../../../common/date_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/str.o: ../../../../../common/str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/str.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/str.o.d" -o ${OBJECTDIR}/_ext/360186330/str.o ../../../../../common/str.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/path.o: ../../../../../common/path.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/path.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/path.o.d" -o ${OBJECTDIR}/_ext/360186330/path.o ../../../../../common/path.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/360186330/resource_manager.o: ../../../../../common/resource_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/resource_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/resource_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/resource_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/resource_manager.o.d" -o ${OBJECTDIR}/_ext/360186330/resource_manager.o ../../../../../common/resource_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/md5.o: ../../../../../cyclone_crypto/hash/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/md5.o.d" -o ${OBJECTDIR}/_ext/120521611/md5.o ../../../../../cyclone_crypto/hash/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha1.o: ../../../../../cyclone_crypto/hash/sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha1.o.d" -o ${OBJECTDIR}/_ext/120521611/sha1.o ../../../../../cyclone_crypto/hash/sha1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha224.o: ../../../../../cyclone_crypto/hash/sha224.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha224.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha224.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha224.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha224.o.d" -o ${OBJECTDIR}/_ext/120521611/sha224.o ../../../../../cyclone_crypto/hash/sha224.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha256.o: ../../../../../cyclone_crypto/hash/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha256.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha256.o.d" -o ${OBJECTDIR}/_ext/120521611/sha256.o ../../../../../cyclone_crypto/hash/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha384.o: ../../../../../cyclone_crypto/hash/sha384.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha384.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha384.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha384.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha384.o.d" -o ${OBJECTDIR}/_ext/120521611/sha384.o ../../../../../cyclone_crypto/hash/sha384.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120521611/sha512.o: ../../../../../cyclone_crypto/hash/sha512.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120521611" 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/120521611/sha512.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120521611/sha512.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120521611/sha512.o.d" -o ${OBJECTDIR}/_ext/120521611/sha512.o ../../../../../cyclone_crypto/hash/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273211656/hmac.o: ../../../../../cyclone_crypto/mac/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273211656" 
	@${RM} ${OBJECTDIR}/_ext/273211656/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/273211656/hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273211656/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273211656/hmac.o.d" -o ${OBJECTDIR}/_ext/273211656/hmac.o ../../../../../cyclone_crypto/mac/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/rc4.o: ../../../../../cyclone_crypto/cipher/rc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/rc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/rc4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/rc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/rc4.o.d" -o ${OBJECTDIR}/_ext/7005106/rc4.o ../../../../../cyclone_crypto/cipher/rc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/idea.o: ../../../../../cyclone_crypto/cipher/idea.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/idea.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/idea.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/idea.o.d" -o ${OBJECTDIR}/_ext/7005106/idea.o ../../../../../cyclone_crypto/cipher/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/des.o: ../../../../../cyclone_crypto/cipher/des.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/des.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/des.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/des.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/des.o.d" -o ${OBJECTDIR}/_ext/7005106/des.o ../../../../../cyclone_crypto/cipher/des.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/des3.o: ../../../../../cyclone_crypto/cipher/des3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/des3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/des3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/des3.o.d" -o ${OBJECTDIR}/_ext/7005106/des3.o ../../../../../cyclone_crypto/cipher/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/aes.o: ../../../../../cyclone_crypto/cipher/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/aes.o.d" -o ${OBJECTDIR}/_ext/7005106/aes.o ../../../../../cyclone_crypto/cipher/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/camellia.o: ../../../../../cyclone_crypto/cipher/camellia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/camellia.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/camellia.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/camellia.o.d" -o ${OBJECTDIR}/_ext/7005106/camellia.o ../../../../../cyclone_crypto/cipher/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/seed.o: ../../../../../cyclone_crypto/cipher/seed.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/seed.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/seed.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/seed.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/seed.o.d" -o ${OBJECTDIR}/_ext/7005106/seed.o ../../../../../cyclone_crypto/cipher/seed.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/aria.o: ../../../../../cyclone_crypto/cipher/aria.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/aria.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/aria.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/aria.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/aria.o.d" -o ${OBJECTDIR}/_ext/7005106/aria.o ../../../../../cyclone_crypto/cipher/aria.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1125617168/cbc.o: ../../../../../cyclone_crypto/cipher_mode/cbc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1125617168" 
	@${RM} ${OBJECTDIR}/_ext/1125617168/cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1125617168/cbc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1125617168/cbc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1125617168/cbc.o.d" -o ${OBJECTDIR}/_ext/1125617168/cbc.o ../../../../../cyclone_crypto/cipher_mode/cbc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120726866/ccm.o: ../../../../../cyclone_crypto/aead/ccm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120726866" 
	@${RM} ${OBJECTDIR}/_ext/120726866/ccm.o.d 
	@${RM} ${OBJECTDIR}/_ext/120726866/ccm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120726866/ccm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120726866/ccm.o.d" -o ${OBJECTDIR}/_ext/120726866/ccm.o ../../../../../cyclone_crypto/aead/ccm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120726866/gcm.o: ../../../../../cyclone_crypto/aead/gcm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120726866" 
	@${RM} ${OBJECTDIR}/_ext/120726866/gcm.o.d 
	@${RM} ${OBJECTDIR}/_ext/120726866/gcm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120726866/gcm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120726866/gcm.o.d" -o ${OBJECTDIR}/_ext/120726866/gcm.o ../../../../../cyclone_crypto/aead/gcm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/7005106/chacha.o: ../../../../../cyclone_crypto/cipher/chacha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/7005106" 
	@${RM} ${OBJECTDIR}/_ext/7005106/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/7005106/chacha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/7005106/chacha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/7005106/chacha.o.d" -o ${OBJECTDIR}/_ext/7005106/chacha.o ../../../../../cyclone_crypto/cipher/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273211656/poly1305.o: ../../../../../cyclone_crypto/mac/poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273211656" 
	@${RM} ${OBJECTDIR}/_ext/273211656/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/273211656/poly1305.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273211656/poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273211656/poly1305.o.d" -o ${OBJECTDIR}/_ext/273211656/poly1305.o ../../../../../cyclone_crypto/mac/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o: ../../../../../cyclone_crypto/aead/chacha20_poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120726866" 
	@${RM} ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/120726866/chacha20_poly1305.o ../../../../../cyclone_crypto/aead/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273214849/dh.o: ../../../../../cyclone_crypto/pkc/dh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273214849" 
	@${RM} ${OBJECTDIR}/_ext/273214849/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/273214849/dh.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273214849/dh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273214849/dh.o.d" -o ${OBJECTDIR}/_ext/273214849/dh.o ../../../../../cyclone_crypto/pkc/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273214849/rsa.o: ../../../../../cyclone_crypto/pkc/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273214849" 
	@${RM} ${OBJECTDIR}/_ext/273214849/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273214849/rsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273214849/rsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273214849/rsa.o.d" -o ${OBJECTDIR}/_ext/273214849/rsa.o ../../../../../cyclone_crypto/pkc/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273214849/dsa.o: ../../../../../cyclone_crypto/pkc/dsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273214849" 
	@${RM} ${OBJECTDIR}/_ext/273214849/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273214849/dsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273214849/dsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273214849/dsa.o.d" -o ${OBJECTDIR}/_ext/273214849/dsa.o ../../../../../cyclone_crypto/pkc/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ec.o: ../../../../../cyclone_crypto/ecc/ec.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ec.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ec.o.d" -o ${OBJECTDIR}/_ext/273204030/ec.o ../../../../../cyclone_crypto/ecc/ec.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ec_curves.o: ../../../../../cyclone_crypto/ecc/ec_curves.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec_curves.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ec_curves.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ec_curves.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ec_curves.o.d" -o ${OBJECTDIR}/_ext/273204030/ec_curves.o ../../../../../cyclone_crypto/ecc/ec_curves.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ecdh.o: ../../../../../cyclone_crypto/ecc/ecdh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdh.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdh.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ecdh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ecdh.o.d" -o ${OBJECTDIR}/_ext/273204030/ecdh.o ../../../../../cyclone_crypto/ecc/ecdh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ecdsa.o: ../../../../../cyclone_crypto/ecc/ecdsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ecdsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ecdsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ecdsa.o.d" -o ${OBJECTDIR}/_ext/273204030/ecdsa.o ../../../../../cyclone_crypto/ecc/ecdsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/eddsa.o: ../../../../../cyclone_crypto/ecc/eddsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/eddsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/eddsa.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/eddsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/eddsa.o.d" -o ${OBJECTDIR}/_ext/273204030/eddsa.o ../../../../../cyclone_crypto/ecc/eddsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/curve25519.o: ../../../../../cyclone_crypto/ecc/curve25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve25519.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/curve25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/curve25519.o.d" -o ${OBJECTDIR}/_ext/273204030/curve25519.o ../../../../../cyclone_crypto/ecc/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/curve448.o: ../../../../../cyclone_crypto/ecc/curve448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/curve448.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/curve448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/curve448.o.d" -o ${OBJECTDIR}/_ext/273204030/curve448.o ../../../../../cyclone_crypto/ecc/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/x25519.o: ../../../../../cyclone_crypto/ecc/x25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/x25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/x25519.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/x25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/x25519.o.d" -o ${OBJECTDIR}/_ext/273204030/x25519.o ../../../../../cyclone_crypto/ecc/x25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/x448.o: ../../../../../cyclone_crypto/ecc/x448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/x448.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/x448.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/x448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/x448.o.d" -o ${OBJECTDIR}/_ext/273204030/x448.o ../../../../../cyclone_crypto/ecc/x448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ed25519.o: ../../../../../cyclone_crypto/ecc/ed25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed25519.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ed25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ed25519.o.d" -o ${OBJECTDIR}/_ext/273204030/ed25519.o ../../../../../cyclone_crypto/ecc/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273204030/ed448.o: ../../../../../cyclone_crypto/ecc/ed448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273204030" 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/273204030/ed448.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273204030/ed448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273204030/ed448.o.d" -o ${OBJECTDIR}/_ext/273204030/ed448.o ../../../../../cyclone_crypto/ecc/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273212127/mpi.o: ../../../../../cyclone_crypto/mpi/mpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273212127" 
	@${RM} ${OBJECTDIR}/_ext/273212127/mpi.o.d 
	@${RM} ${OBJECTDIR}/_ext/273212127/mpi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273212127/mpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273212127/mpi.o.d" -o ${OBJECTDIR}/_ext/273212127/mpi.o ../../../../../cyclone_crypto/mpi/mpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1404394810/base64.o: ../../../../../cyclone_crypto/encoding/base64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404394810" 
	@${RM} ${OBJECTDIR}/_ext/1404394810/base64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404394810/base64.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404394810/base64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1404394810/base64.o.d" -o ${OBJECTDIR}/_ext/1404394810/base64.o ../../../../../cyclone_crypto/encoding/base64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1404394810/asn1.o: ../../../../../cyclone_crypto/encoding/asn1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404394810" 
	@${RM} ${OBJECTDIR}/_ext/1404394810/asn1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404394810/asn1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404394810/asn1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1404394810/asn1.o.d" -o ${OBJECTDIR}/_ext/1404394810/asn1.o ../../../../../cyclone_crypto/encoding/asn1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1404394810/oid.o: ../../../../../cyclone_crypto/encoding/oid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1404394810" 
	@${RM} ${OBJECTDIR}/_ext/1404394810/oid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1404394810/oid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1404394810/oid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1404394810/oid.o.d" -o ${OBJECTDIR}/_ext/1404394810/oid.o ../../../../../cyclone_crypto/encoding/oid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/pem_import.o: ../../../../../cyclone_crypto/pkix/pem_import.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/pem_import.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/pem_import.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/pem_import.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/pem_import.o.d" -o ${OBJECTDIR}/_ext/120273967/pem_import.o ../../../../../cyclone_crypto/pkix/pem_import.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o: ../../../../../cyclone_crypto/pkix/pkcs8_key_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/pkcs8_key_parse.o ../../../../../cyclone_crypto/pkix/pkcs8_key_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_key_parse.o: ../../../../../cyclone_crypto/pkix/x509_key_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_key_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_key_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_key_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_key_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_key_parse.o ../../../../../cyclone_crypto/pkix/x509_key_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_cert_parse.o: ../../../../../cyclone_crypto/pkix/x509_cert_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_cert_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_cert_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_cert_parse.o ../../../../../cyclone_crypto/pkix/x509_cert_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_cert_validate.o: ../../../../../cyclone_crypto/pkix/x509_cert_validate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_cert_validate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_cert_validate.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_cert_validate.o ../../../../../cyclone_crypto/pkix/x509_cert_validate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_crl_parse.o: ../../../../../cyclone_crypto/pkix/x509_crl_parse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_crl_parse.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_crl_parse.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_crl_parse.o ../../../../../cyclone_crypto/pkix/x509_crl_parse.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_crl_validate.o: ../../../../../cyclone_crypto/pkix/x509_crl_validate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_crl_validate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_crl_validate.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_crl_validate.o ../../../../../cyclone_crypto/pkix/x509_crl_validate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/120273967/x509_common.o: ../../../../../cyclone_crypto/pkix/x509_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120273967" 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/120273967/x509_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/120273967/x509_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/120273967/x509_common.o.d" -o ${OBJECTDIR}/_ext/120273967/x509_common.o ../../../../../cyclone_crypto/pkix/x509_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273209830/hkdf.o: ../../../../../cyclone_crypto/kdf/hkdf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273209830" 
	@${RM} ${OBJECTDIR}/_ext/273209830/hkdf.o.d 
	@${RM} ${OBJECTDIR}/_ext/273209830/hkdf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273209830/hkdf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273209830/hkdf.o.d" -o ${OBJECTDIR}/_ext/273209830/hkdf.o ../../../../../cyclone_crypto/kdf/hkdf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/273216868/yarrow.o: ../../../../../cyclone_crypto/rng/yarrow.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/273216868" 
	@${RM} ${OBJECTDIR}/_ext/273216868/yarrow.o.d 
	@${RM} ${OBJECTDIR}/_ext/273216868/yarrow.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/273216868/yarrow.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/273216868/yarrow.o.d" -o ${OBJECTDIR}/_ext/273216868/yarrow.o ../../../../../cyclone_crypto/rng/yarrow.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls.o: ../../../../../cyclone_ssl/tls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls.o.d" -o ${OBJECTDIR}/_ext/476983781/tls.o ../../../../../cyclone_ssl/tls.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o: ../../../../../cyclone_ssl/tls_cipher_suites.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_cipher_suites.o ../../../../../cyclone_ssl/tls_cipher_suites.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_handshake.o: ../../../../../cyclone_ssl/tls_handshake.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_handshake.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_handshake.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_handshake.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_handshake.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_handshake.o ../../../../../cyclone_ssl/tls_handshake.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client.o: ../../../../../cyclone_ssl/tls_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client.o ../../../../../cyclone_ssl/tls_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client_fsm.o: ../../../../../cyclone_ssl/tls_client_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client_fsm.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client_fsm.o ../../../../../cyclone_ssl/tls_client_fsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client_extensions.o: ../../../../../cyclone_ssl/tls_client_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client_extensions.o ../../../../../cyclone_ssl/tls_client_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_client_misc.o: ../../../../../cyclone_ssl/tls_client_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_client_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_client_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_client_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_client_misc.o ../../../../../cyclone_ssl/tls_client_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server.o: ../../../../../cyclone_ssl/tls_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server.o ../../../../../cyclone_ssl/tls_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server_fsm.o: ../../../../../cyclone_ssl/tls_server_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server_fsm.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server_fsm.o ../../../../../cyclone_ssl/tls_server_fsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server_extensions.o: ../../../../../cyclone_ssl/tls_server_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server_extensions.o ../../../../../cyclone_ssl/tls_server_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_server_misc.o: ../../../../../cyclone_ssl/tls_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_server_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_server_misc.o ../../../../../cyclone_ssl/tls_server_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_common.o: ../../../../../cyclone_ssl/tls_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_common.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_common.o ../../../../../cyclone_ssl/tls_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_extensions.o: ../../../../../cyclone_ssl/tls_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_extensions.o ../../../../../cyclone_ssl/tls_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_certificate.o: ../../../../../cyclone_ssl/tls_certificate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_certificate.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_certificate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_certificate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_certificate.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_certificate.o ../../../../../cyclone_ssl/tls_certificate.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_signature.o: ../../../../../cyclone_ssl/tls_signature.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_signature.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_signature.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_signature.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_signature.o ../../../../../cyclone_ssl/tls_signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_key_material.o: ../../../../../cyclone_ssl/tls_key_material.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_key_material.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_key_material.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_key_material.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_key_material.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_key_material.o ../../../../../cyclone_ssl/tls_key_material.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o: ../../../../../cyclone_ssl/tls_transcript_hash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_transcript_hash.o ../../../../../cyclone_ssl/tls_transcript_hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_cache.o: ../../../../../cyclone_ssl/tls_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_cache.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_cache.o ../../../../../cyclone_ssl/tls_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_ticket.o: ../../../../../cyclone_ssl/tls_ticket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ticket.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ticket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_ticket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_ticket.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_ticket.o ../../../../../cyclone_ssl/tls_ticket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_ffdhe.o: ../../../../../cyclone_ssl/tls_ffdhe.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_ffdhe.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_ffdhe.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_ffdhe.o ../../../../../cyclone_ssl/tls_ffdhe.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_record.o: ../../../../../cyclone_ssl/tls_record.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_record.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_record.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_record.o ../../../../../cyclone_ssl/tls_record.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_record_encryption.o: ../../../../../cyclone_ssl/tls_record_encryption.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_record_encryption.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_record_encryption.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_record_encryption.o ../../../../../cyclone_ssl/tls_record_encryption.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_record_decryption.o: ../../../../../cyclone_ssl/tls_record_decryption.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_record_decryption.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_record_decryption.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_record_decryption.o ../../../../../cyclone_ssl/tls_record_decryption.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls_misc.o: ../../../../../cyclone_ssl/tls_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls_misc.o ../../../../../cyclone_ssl/tls_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_client.o: ../../../../../cyclone_ssl/tls13_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_client.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_client.o ../../../../../cyclone_ssl/tls13_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o: ../../../../../cyclone_ssl/tls13_client_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_client_extensions.o ../../../../../cyclone_ssl/tls13_client_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_client_misc.o: ../../../../../cyclone_ssl/tls13_client_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_client_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_client_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_client_misc.o ../../../../../cyclone_ssl/tls13_client_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_server.o: ../../../../../cyclone_ssl/tls13_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_server.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_server.o ../../../../../cyclone_ssl/tls13_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o: ../../../../../cyclone_ssl/tls13_server_extensions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_server_extensions.o ../../../../../cyclone_ssl/tls13_server_extensions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_server_misc.o: ../../../../../cyclone_ssl/tls13_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_server_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_server_misc.o ../../../../../cyclone_ssl/tls13_server_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_common.o: ../../../../../cyclone_ssl/tls13_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_common.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_common.o ../../../../../cyclone_ssl/tls13_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_key_material.o: ../../../../../cyclone_ssl/tls13_key_material.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_key_material.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_key_material.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_key_material.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_key_material.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_key_material.o ../../../../../cyclone_ssl/tls13_key_material.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/tls13_misc.o: ../../../../../cyclone_ssl/tls13_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/tls13_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/tls13_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/tls13_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/tls13_misc.o ../../../../../cyclone_ssl/tls13_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/476983781/ssl_misc.o: ../../../../../cyclone_ssl/ssl_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/476983781" 
	@${RM} ${OBJECTDIR}/_ext/476983781/ssl_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/476983781/ssl_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/476983781/ssl_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/476983781/ssl_misc.o.d" -o ${OBJECTDIR}/_ext/476983781/ssl_misc.o ../../../../../cyclone_ssl/ssl_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/net.o: ../../../../../cyclone_tcp/core/net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net.o.d" -o ${OBJECTDIR}/_ext/1079766828/net.o ../../../../../cyclone_tcp/core/net.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/net_mem.o: ../../../../../cyclone_tcp/core/net_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" -o ${OBJECTDIR}/_ext/1079766828/net_mem.o ../../../../../cyclone_tcp/core/net_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o: ../../../../../cyclone_tcp/drivers/mac/pic32mz_eth_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/37329846" 
	@${RM} ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o.d" -o ${OBJECTDIR}/_ext/37329846/pic32mz_eth_driver.o ../../../../../cyclone_tcp/drivers/mac/pic32mz_eth_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/37332968/lan8720_driver.o: ../../../../../cyclone_tcp/drivers/phy/lan8720_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/37332968" 
	@${RM} ${OBJECTDIR}/_ext/37332968/lan8720_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/37332968/lan8720_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/37332968/lan8720_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/37332968/lan8720_driver.o.d" -o ${OBJECTDIR}/_ext/37332968/lan8720_driver.o ../../../../../cyclone_tcp/drivers/phy/lan8720_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o: ../../../../../cyclone_tcp/drivers/wifi/wilc1000_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1157531022" 
	@${RM} ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o.d" -o ${OBJECTDIR}/_ext/1157531022/wilc1000_driver.o ../../../../../cyclone_tcp/drivers/wifi/wilc1000_driver.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/nic.o: ../../../../../cyclone_tcp/core/nic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/nic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/nic.o.d" -o ${OBJECTDIR}/_ext/1079766828/nic.o ../../../../../cyclone_tcp/core/nic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/ethernet.o: ../../../../../cyclone_tcp/core/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet.o ../../../../../cyclone_tcp/core/ethernet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/ethernet_misc.o: ../../../../../cyclone_tcp/core/ethernet_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet_misc.o ../../../../../cyclone_tcp/core/ethernet_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/arp.o: ../../../../../cyclone_tcp/ipv4/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/arp.o.d" -o ${OBJECTDIR}/_ext/1079587046/arp.o ../../../../../cyclone_tcp/ipv4/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/ipv4.o: ../../../../../cyclone_tcp/ipv4/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4.o ../../../../../cyclone_tcp/ipv4/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/ipv4_frag.o: ../../../../../cyclone_tcp/ipv4/ipv4_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ../../../../../cyclone_tcp/ipv4/ipv4_frag.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/ipv4_misc.o: ../../../../../cyclone_tcp/ipv4/ipv4_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_misc.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_misc.o ../../../../../cyclone_tcp/ipv4/ipv4_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/icmp.o: ../../../../../cyclone_tcp/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/icmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/icmp.o ../../../../../cyclone_tcp/ipv4/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587046/igmp.o: ../../../../../cyclone_tcp/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/igmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/igmp.o ../../../../../cyclone_tcp/ipv4/igmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6.o: ../../../../../cyclone_tcp/ipv6/ipv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6.o ../../../../../cyclone_tcp/ipv6/ipv6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6_frag.o: ../../../../../cyclone_tcp/ipv6/ipv6_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ../../../../../cyclone_tcp/ipv6/ipv6_frag.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6_misc.o: ../../../../../cyclone_tcp/ipv6/ipv6_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ../../../../../cyclone_tcp/ipv6/ipv6_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o: ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/icmpv6.o: ../../../../../cyclone_tcp/ipv6/icmpv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ../../../../../cyclone_tcp/ipv6/icmpv6.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/mld.o: ../../../../../cyclone_tcp/ipv6/mld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/mld.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/mld.o.d" -o ${OBJECTDIR}/_ext/1079587044/mld.o ../../../../../cyclone_tcp/ipv6/mld.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp.o: ../../../../../cyclone_tcp/ipv6/ndp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp.o ../../../../../cyclone_tcp/ipv6/ndp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp_cache.o: ../../../../../cyclone_tcp/ipv6/ndp_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ../../../../../cyclone_tcp/ipv6/ndp_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp_misc.o: ../../../../../cyclone_tcp/ipv6/ndp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ../../../../../cyclone_tcp/ipv6/ndp_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o: ../../../../../cyclone_tcp/ipv6/ndp_router_adv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_router_adv.o ../../../../../cyclone_tcp/ipv6/ndp_router_adv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079587044/slaac.o: ../../../../../cyclone_tcp/ipv6/slaac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/slaac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/slaac.o.d" -o ${OBJECTDIR}/_ext/1079587044/slaac.o ../../../../../cyclone_tcp/ipv6/slaac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/ip.o: ../../../../../cyclone_tcp/core/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ip.o.d" -o ${OBJECTDIR}/_ext/1079766828/ip.o ../../../../../cyclone_tcp/core/ip.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp.o: ../../../../../cyclone_tcp/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp.o ../../../../../cyclone_tcp/core/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp_fsm.o: ../../../../../cyclone_tcp/core/tcp_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ../../../../../cyclone_tcp/core/tcp_fsm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp_misc.o: ../../../../../cyclone_tcp/core/tcp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ../../../../../cyclone_tcp/core/tcp_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/tcp_timer.o: ../../../../../cyclone_tcp/core/tcp_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ../../../../../cyclone_tcp/core/tcp_timer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/udp.o: ../../../../../cyclone_tcp/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/udp.o.d" -o ${OBJECTDIR}/_ext/1079766828/udp.o ../../../../../cyclone_tcp/core/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/socket.o: ../../../../../cyclone_tcp/core/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/socket.o ../../../../../cyclone_tcp/core/socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/bsd_socket.o: ../../../../../cyclone_tcp/core/bsd_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ../../../../../cyclone_tcp/core/bsd_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079766828/raw_socket.o: ../../../../../cyclone_tcp/core/raw_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ../../../../../cyclone_tcp/core/raw_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_cache.o: ../../../../../cyclone_tcp/dns/dns_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_cache.o ../../../../../cyclone_tcp/dns/dns_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_client.o: ../../../../../cyclone_tcp/dns/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_client.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_client.o ../../../../../cyclone_tcp/dns/dns_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_common.o: ../../../../../cyclone_tcp/dns/dns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_common.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_common.o ../../../../../cyclone_tcp/dns/dns_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/242264404/dns_debug.o: ../../../../../cyclone_tcp/dns/dns_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_debug.o ../../../../../cyclone_tcp/dns/dns_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079479599/mdns_client.o: ../../../../../cyclone_tcp/mdns/mdns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ../../../../../cyclone_tcp/mdns/mdns_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079479599/mdns_responder.o: ../../../../../cyclone_tcp/mdns/mdns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ../../../../../cyclone_tcp/mdns/mdns_responder.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079479599/mdns_common.o: ../../../../../cyclone_tcp/mdns/mdns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ../../../../../cyclone_tcp/mdns/mdns_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1435316685/nbns_client.o: ../../../../../cyclone_tcp/netbios/nbns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ../../../../../cyclone_tcp/netbios/nbns_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1435316685/nbns_responder.o: ../../../../../cyclone_tcp/netbios/nbns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ../../../../../cyclone_tcp/netbios/nbns_responder.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1435316685/nbns_common.o: ../../../../../cyclone_tcp/netbios/nbns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ../../../../../cyclone_tcp/netbios/nbns_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/895184604/llmnr_client.o: ../../../../../cyclone_tcp/llmnr/llmnr_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/895184604" 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/895184604/llmnr_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/895184604/llmnr_client.o.d" -o ${OBJECTDIR}/_ext/895184604/llmnr_client.o ../../../../../cyclone_tcp/llmnr/llmnr_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/895184604/llmnr_responder.o: ../../../../../cyclone_tcp/llmnr/llmnr_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/895184604" 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/895184604/llmnr_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/895184604/llmnr_responder.o.d" -o ${OBJECTDIR}/_ext/895184604/llmnr_responder.o ../../../../../cyclone_tcp/llmnr/llmnr_responder.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/895184604/llmnr_common.o: ../../../../../cyclone_tcp/llmnr/llmnr_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/895184604" 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/895184604/llmnr_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/895184604/llmnr_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/895184604/llmnr_common.o.d" -o ${OBJECTDIR}/_ext/895184604/llmnr_common.o ../../../../../cyclone_tcp/llmnr/llmnr_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_client.o: ../../../../../cyclone_tcp/dhcp/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ../../../../../cyclone_tcp/dhcp/dhcp_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_server.o: ../../../../../cyclone_tcp/dhcp/dhcp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_server.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_server.o ../../../../../cyclone_tcp/dhcp/dhcp_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_common.o: ../../../../../cyclone_tcp/dhcp/dhcp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ../../../../../cyclone_tcp/dhcp/dhcp_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079744218/dhcp_debug.o: ../../../../../cyclone_tcp/dhcp/dhcp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ../../../../../cyclone_tcp/dhcp/dhcp_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/http_server.o: ../../../../../cyclone_tcp/http/http_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/http_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/http_server.o.d" -o ${OBJECTDIR}/_ext/1079612995/http_server.o ../../../../../cyclone_tcp/http/http_server.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/http_server_auth.o: ../../../../../cyclone_tcp/http/http_server_auth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_auth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_auth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/http_server_auth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/http_server_auth.o.d" -o ${OBJECTDIR}/_ext/1079612995/http_server_auth.o ../../../../../cyclone_tcp/http/http_server_auth.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/http_server_misc.o: ../../../../../cyclone_tcp/http/http_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/http_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/http_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/http_server_misc.o.d" -o ${OBJECTDIR}/_ext/1079612995/http_server_misc.o ../../../../../cyclone_tcp/http/http_server_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/mime.o: ../../../../../cyclone_tcp/http/mime.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/mime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/mime.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/mime.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/mime.o.d" -o ${OBJECTDIR}/_ext/1079612995/mime.o ../../../../../cyclone_tcp/http/mime.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079612995/ssi.o: ../../../../../cyclone_tcp/http/ssi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079612995" 
	@${RM} ${OBJECTDIR}/_ext/1079612995/ssi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079612995/ssi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079612995/ssi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079612995/ssi.o.d" -o ${OBJECTDIR}/_ext/1079612995/ssi.o ../../../../../cyclone_tcp/http/ssi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client.o: ../../../../../cyclone_tcp/mqtt/mqtt_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client.o ../../../../../cyclone_tcp/mqtt/mqtt_client.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o: ../../../../../cyclone_tcp/mqtt/mqtt_client_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client_misc.o ../../../../../cyclone_tcp/mqtt/mqtt_client_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o: ../../../../../cyclone_tcp/mqtt/mqtt_client_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client_packet.o ../../../../../cyclone_tcp/mqtt/mqtt_client_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o: ../../../../../cyclone_tcp/mqtt/mqtt_client_transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079466919" 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o.d" -o ${OBJECTDIR}/_ext/1079466919/mqtt_client_transport.o ../../../../../cyclone_tcp/mqtt/mqtt_client_transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket.o: ../../../../../cyclone_tcp/web_socket/web_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket.o ../../../../../cyclone_tcp/web_socket/web_socket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_auth.o: ../../../../../cyclone_tcp/web_socket/web_socket_auth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_auth.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_auth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_auth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_auth.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_auth.o ../../../../../cyclone_tcp/web_socket/web_socket_auth.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_frame.o: ../../../../../cyclone_tcp/web_socket/web_socket_frame.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_frame.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_frame.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_frame.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_frame.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_frame.o ../../../../../cyclone_tcp/web_socket/web_socket_frame.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_misc.o: ../../../../../cyclone_tcp/web_socket/web_socket_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_misc.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_misc.o ../../../../../cyclone_tcp/web_socket/web_socket_misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/18976819/web_socket_transport.o: ../../../../../cyclone_tcp/web_socket/web_socket_transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/18976819" 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_transport.o.d 
	@${RM} ${OBJECTDIR}/_ext/18976819/web_socket_transport.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/18976819/web_socket_transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/18976819/web_socket_transport.o.d" -o ${OBJECTDIR}/_ext/18976819/web_socket_transport.o ../../../../../cyclone_tcp/web_socket/web_socket_transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/sprintf.o: ../src/sprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" -o ${OBJECTDIR}/_ext/1360937237/sprintf.o ../src/sprintf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/strtok_r.o: ../src/strtok_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" -o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ../src/strtok_r.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o: ../src/wilc1000_callbacks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o.d" -o ${OBJECTDIR}/_ext/1360937237/wilc1000_callbacks.o ../src/wilc1000_callbacks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1360937237/res.o: ../src/res.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/res.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/res.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/res.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/res.o.d" -o ${OBJECTDIR}/_ext/1360937237/res.o ../src/res.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/23001898/port.o: ../../../../../third_party/freertos/portable/mplab/pic32mz/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/23001898" 
	@${RM} ${OBJECTDIR}/_ext/23001898/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/23001898/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/23001898/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/23001898/port.o.d" -o ${OBJECTDIR}/_ext/23001898/port.o ../../../../../third_party/freertos/portable/mplab/pic32mz/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/croutine.o: ../../../../../third_party/freertos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/croutine.o.d" -o ${OBJECTDIR}/_ext/986256546/croutine.o ../../../../../third_party/freertos/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/list.o: ../../../../../third_party/freertos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/list.o.d" -o ${OBJECTDIR}/_ext/986256546/list.o ../../../../../third_party/freertos/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/queue.o: ../../../../../third_party/freertos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/queue.o.d" -o ${OBJECTDIR}/_ext/986256546/queue.o ../../../../../third_party/freertos/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/tasks.o: ../../../../../third_party/freertos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/tasks.o.d" -o ${OBJECTDIR}/_ext/986256546/tasks.o ../../../../../third_party/freertos/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/986256546/timers.o: ../../../../../third_party/freertos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/986256546" 
	@${RM} ${OBJECTDIR}/_ext/986256546/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/986256546/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/986256546/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/986256546/timers.o.d" -o ${OBJECTDIR}/_ext/986256546/timers.o ../../../../../third_party/freertos/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/979089083/heap_3.o: ../../../../../third_party/freertos/portable/memmang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/979089083" 
	@${RM} ${OBJECTDIR}/_ext/979089083/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/979089083/heap_3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/979089083/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/979089083/heap_3.o.d" -o ${OBJECTDIR}/_ext/979089083/heap_3.o ../../../../../third_party/freertos/portable/memmang/heap_3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o: ../../../../../third_party/atmel/devices/wilc1000/bsp/source/nm_bsp_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/457051042" 
	@${RM} ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o.d" -o ${OBJECTDIR}/_ext/457051042/nm_bsp_pic32mz.o ../../../../../third_party/atmel/devices/wilc1000/bsp/source/nm_bsp_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o: ../../../../../third_party/atmel/devices/wilc1000/bus_wrapper/source/nm_bus_wrapper_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1700104339" 
	@${RM} ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1700104339/nm_bus_wrapper_pic32mz.o ../../../../../third_party/atmel/devices/wilc1000/bus_wrapper/source/nm_bus_wrapper_pic32mz.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1185106856/nm_common.o: ../../../../../third_party/atmel/devices/wilc1000/common/source/nm_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1185106856" 
	@${RM} ${OBJECTDIR}/_ext/1185106856/nm_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1185106856/nm_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1185106856/nm_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1185106856/nm_common.o.d" -o ${OBJECTDIR}/_ext/1185106856/nm_common.o ../../../../../third_party/atmel/devices/wilc1000/common/source/nm_common.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/m2m_hif.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_hif.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_hif.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_hif.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/m2m_hif.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/m2m_hif.o.d" -o ${OBJECTDIR}/_ext/1679150795/m2m_hif.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_hif.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/m2m_periph.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_periph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_periph.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/m2m_periph.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/m2m_periph.o.d" -o ${OBJECTDIR}/_ext/1679150795/m2m_periph.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_periph.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/m2m_wifi.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_wifi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/m2m_wifi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/m2m_wifi.o.d" -o ${OBJECTDIR}/_ext/1679150795/m2m_wifi.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/m2m_wifi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmasic.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmasic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmasic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmasic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmasic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmasic.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmasic.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmasic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmbus.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmbus.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmbus.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmbus.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmbus.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmbus.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmbus.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmdrv.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmdrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmdrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmdrv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmdrv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmdrv.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmdrv.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmdrv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/nmspi.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmspi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmspi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/nmspi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/nmspi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/nmspi.o.d" -o ${OBJECTDIR}/_ext/1679150795/nmspi.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/nmspi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1679150795/spi_flash.o: ../../../../../third_party/atmel/devices/wilc1000/driver/source/spi_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1679150795" 
	@${RM} ${OBJECTDIR}/_ext/1679150795/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1679150795/spi_flash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1679150795/spi_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1679150795/spi_flash.o.d" -o ${OBJECTDIR}/_ext/1679150795/spi_flash.o ../../../../../third_party/atmel/devices/wilc1000/driver/source/spi_flash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1022178492/PMK.o: ../../../../../third_party/atmel/devices/wilc1000/drv_hash/PMK.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1022178492" 
	@${RM} ${OBJECTDIR}/_ext/1022178492/PMK.o.d 
	@${RM} ${OBJECTDIR}/_ext/1022178492/PMK.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1022178492/PMK.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1022178492/PMK.o.d" -o ${OBJECTDIR}/_ext/1022178492/PMK.o ../../../../../third_party/atmel/devices/wilc1000/drv_hash/PMK.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o: ../../../../../third_party/atmel/devices/wilc1000/os/source/m2m_wifi_ex.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640134129" 
	@${RM} ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -DUSE_PIC32MZ_EF_CURIOSITY -I"../src" -I"../../../../../third_party/microchip/boards/common" -I"../../../../../third_party/microchip/boards/pic32mz_ef_curiosity" -I"../../../../../third_party/atmel/devices/wilc1000" -I"../../../../../third_party/freertos/include" -I"../../../../../third_party/freertos/portable/mplab/pic32mz" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o.d" -o ${OBJECTDIR}/_ext/1640134129/m2m_wifi_ex.o ../../../../../third_party/atmel/devices/wilc1000/os/source/m2m_wifi_ex.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=262144,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -O1 -o dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=262144,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
