## centos-escm-installer.sh -- Author: Jordan Randleman
## Purpose:
##   Designed to auto-install Java 17 & EScheme onto the host SCU CentOS linux machine.
## @PRECONDITION:
##   This file assumes it's being run in the user's home directory.

# Install Java 17
git clone https://github.com/jrandleman/SCU-EScheme-Support

# Install EScheme
git clone https://github.com/jrandleman/EScheme

# Unzip one of the larger files we zipped to ease GitHub use.
home_dir_path=$(pwd)
cd "SCU-EScheme-Support/CentOS/jdk-17.0.4.1+1/lib"
eval "unzip modules.zip"
cd "../../../.."

# Compile & Run the EScheme Installer
cd "EScheme/installer"
eval "$home_dir_path/SCU-EScheme-Support/CentOS/jdk-17.0.4.1+1/bin/javac Installer.java"
eval "$home_dir_path/SCU-EScheme-Support/CentOS/jdk-17.0.4.1+1/bin/java Installer"
