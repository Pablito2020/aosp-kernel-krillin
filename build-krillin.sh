#!/bin/bash


# SET COLORS FOR BASH!

blue='\033[0;34m'
cyan='\033[0;36m'
yellow='\033[0;33m'
green='\033[0;32m'
red='\033[0;31m'
nocol='\033[0m'
orange='\033[0;33m'
light_red='\033[1;31m'
purple='\033[0;35m'

echo -e "${orange}####################################################"
echo -e "${orange}#              INFO ABOUT THE SCRIPT               #"
echo -e "${orange}####################################################"
echo -e "${orange}#      NAME: PABLITO2020 KERNEL BUILDER SCRIPT     #"
echo -e "${orange}#             DEVICE: BQ AQUARIS E4.5              #"
echo -e "${orange}#            KERNEL : ALPS L1 (3.10.72)            #"
echo -e "${orange}####################################################"

# EXPORT TOOLCHAIN + CONFIGURE USER AND HOST BUILDER
export ARCH=arm CROSS_COMPILE=../arm-eabi-4.8/bin/arm-eabi-
export KBUILD_BUILD_USER=pablito
export KBUILD_BUILD_HOST=developer

# SELECT THE DEFCONFIG FILE
echo -e "${cyan} Read krillin Defconfig.... "
make krillin_defconfig

# BUILD ZIMAGE
echo -e "${purple} Building Kernel...."
make zImage

# CONFIRMATION MESSAGE THAT KERNEL HAVE BEEN SUCCESFULLY BUILDED
echo -e "${green} Succesfully builded the Kernel!"

# COMPILATION TIME
echo -e $[$SECONDS / 60]' minutes '$[$SECONDS % 60]' seconds'


