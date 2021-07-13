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

#4) Later to (re)activate this specific environement chdir to the directrory ~/virtualenvironment/my_env

#5) Reactivate my_env with this command* :

source bin/activate

or equivalent

. bin/activate



#6) you must see this prompt :
(my_venv) myuser@mycomputer:~/virtualenvironment/my_env$

#7) Use the commande deactivate to quit current my_env environement OR ctrl+d to exit terminal.

How to use the virtualenv command : https://python-guide-pt-br.readthedocs.io/fr/latest/dev/virtualenvs.html "

# * YES there is a blank space after the point this gonna altered your console and activated my_env environement with python3 and make it persistent untilyou close your terminal !
