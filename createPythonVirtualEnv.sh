#!/bin/bash

# 05 may 2023 yannick sudrie 
# to create a new env under python 2 or 3 (python must be installed before)
# exemple of use :
#. createPythonVirtualEnv my_Env 3
# !!! YES With a space after the point this gonna altered your current environement and make it persistent !!
# by default the new env use python V2.x

DIR_ENV="virtualEnvironment"

NEW_ENV=$1
: ${NEW_ENV:="my_Env"}

PYTHON_VERSION=$2
: ${PYTHON_VERSION:=2}

PATH_PYTHON=$(which python2)
# By default create python V2 environement

if [ $PYTHON_VERSION -eq 3 ] 
then PATH_PYTHON=$(which python3)
fi

# Install de last virtual env 
sudo apt-get install virtualenv -y
#DEPRECATE sudo apt-get install python-virtualenv -y
# Other methos to test if virtual env install
#apt-cache search virtualenv | grep virtualenv
#sudo easy_install virtualenv
#sudo pip install virtualenv
#...

# By defaut i choose to create the virtual environement directory by default user directory /home/curent_user adapt to your need !!
if [ ! -d ~/$DIR_ENV  ] 
then mkdir ~/$DIR_ENV
fi

# Setup and Use Virtualenv with python3
virtualenv -p $PATH_PYTHON ~/$DIR_ENV/$NEW_ENV

# Pause
read -p "Press Enter to continue" </dev/tty

clear
# Note : If you lunch the script  with ./createVirtualEnv my_env 3
# then the folowing part  do not apply to your faher environement
# More details on https://stackoverflow.com/questions/874452/change-the-current-directory-from-a-bash-script

echo "---------------------------------------------------------"
echo "Automatic Jump to your new virtual env type the command "
echo "source activate your new Virtual environement !"
echo " "
echo "Welcome into virtualenv $my_env"
echo " ctrl+d to exit \ close terminal or use command 'deactivate' to quit the virtualenv "
echo " How to use the virtualenv : https://python-guide-pt-br.readthedocs.io/fr/latest/dev/virtualenvs.html "
echo "---------------------------------------------------------"

# Goto directory in the new environement 
cd ~/$DIR_ENV/$NEW_ENV

# Activate my new environement
source ~/$DIR_ENV/$NEW_ENV/bin/activate 
