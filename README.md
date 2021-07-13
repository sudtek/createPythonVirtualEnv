# createPythonVirtualEnv
#This tinny bash script gonna Help the python beginner to automaticaly create a new sourced environment under python 2 or 3

#how to use it :

#1) Download the file createPythonVirtualEnv.sh  :
wget https://github.com/sudtek/createPythonVirtualEnv/blob/main/createPythonVirtualEnv.sh

#or git clone :

git clone https://github.com/sudtek/createPythonVirtualEnv

and jump in to directory createPythonVirtualEnv 

#2) Change it to executable :
chmod +x createPythonVirtualEnv.sh

#3) run the script * :

. createPythonVirtualEnv.sh my_env 3

#4) Later to (re)activate this specific work environement jump to the directrory ~/virtualenvironment 
(base) myuser@mycomputer:~/virtualenvironment$

#5) execute the command* :
. my_venv/bin/activate

#6) you must see this prompt :
(my_venv) myuser@mycomputer:~/virtualenvironment$


# * YES there is a blank space after the point this gonna altered your console and activated my_env environement with python3 and make it persistent untilyou close your terminal !
