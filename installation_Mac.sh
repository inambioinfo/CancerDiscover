#!/bin/bash

#Before downloading CancerDiscover, make sure you have all the necessary software packages installed.
#Downloading CancerDiscover
#Clone the git repository:
git clone https://github.com/HelikarLab/CancerDiscover.git

#Execute installation.sh outside of the CancerDiscover directory, 
#cd ../

#Dependencies
#Installing R, wget and perl

#Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/science
brew install Caskroom/cask/xquartz
brew install r

curl -L http://xrl.us/installperlosx | bash

brew install wget --with-libressl

#Installing WEKA
#This project utilizes WEKA 3-6-11. execute the following command:
wget https://sourceforge.net/projects/weka/files/weka-3-6/3.6.11/weka-3-6-11.zip
unzip weka-3-6-11.zip

#Next, set the WEKA classpath by entering the following command in .bashrc file under Alias definitions:
#export WEKAINSTALL=/absolute/path/to/weka/directory/`
#export CLASSPATH=$CLASSPATH:$WEKAINSTALL/weka.jar

#Installing Bioconductor, Affy, AnnotationDbi, and hgu133plus2cdf
wget -q https://raw.githubusercontent.com/HelikarLab/CancerDiscover/master/Bioconductor_installation.R
Rscript Bioconductor_installation.R
