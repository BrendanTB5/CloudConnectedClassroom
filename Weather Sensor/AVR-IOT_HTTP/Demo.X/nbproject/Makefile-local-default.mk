#
# Generated Makefile - do not edit!
#
#
# This file contains information about the location of compilers and other tools.
# If you commmit this file into your revision control server, you will be able to 
# to checkout the project and build it from the command line with make. However,
# if more than one person works on the same project, then this file might show
# conflicts since different users are bound to have compilers in different places.
# In that case you might choose to not commit this file and let MPLAB X recreate this file
# for each user. The disadvantage of not commiting this file is that you must run MPLAB X at
# least once so the file gets created and the project can be built. Finally, you can also
# avoid using this file at all if you are only building from the command line with make.
# You can invoke make with the values of the macros:
# $ makeMP_CC="/opt/microchip/mplabc30/v3.30c/bin/pic30-gcc" ...  
#
PATH_TO_IDE_BIN=/home/programs/v5.30/mplab_platform/platform/../mplab_ide/modules/../../bin/
# Adding MPLAB X bin directory to path.
PATH:=/home/programs/v5.30/mplab_platform/platform/../mplab_ide/modules/../../bin/:$(PATH)
# Path to java used to run MPLAB X when this makefile was created
MP_JAVA_PATH="/home/programs/v5.30/sys/java/jre1.8.0_181/bin/"
OS_CURRENT="$(shell uname -s)"
MP_CC="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin/avr-gcc"
MP_CPPC="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin/avr-g++"
# MP_BC is not defined
MP_AS="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin/avr-as"
MP_LD="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin/avr-ld"
MP_AR="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin/avr-ar"
DEP_GEN=${MP_JAVA_PATH}java -jar "/home/programs/v5.30/mplab_platform/platform/../mplab_ide/modules/../../bin/extractobjectdependencies.jar"
MP_CC_DIR="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin"
MP_CPPC_DIR="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin"
# MP_BC_DIR is not defined
MP_AS_DIR="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin"
MP_LD_DIR="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin"
MP_AR_DIR="/home/mulholbn/MPLABXProjects/avr8-gnu-toolchain-linux_x86_64/bin"
# MP_BC_DIR is not defined
DFP_DIR="/home/mulholbn/.mchp_packs/Microchip/ATmega_DFP/2.0.12"
