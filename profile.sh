#!/bin/bash -x
user='morinor'

#make bin directory
/bin/mkdir /home/$user/bin

#copy bash profile
/bin/cp /home/$user/.bashrc /home/$user/.bashrc.old
/bin/cp -f  ./conf/.bashrc /home/$user/.bashrc

<<<<<<< HEAD
#install vim
/usr/bin/yum install -y vim-enhanced
=======
#Vim
#install vim
sudo /usr/bin/yum install -y vim
>>>>>>> d0db1055c57ce850e3a43c224898148731c6e929

#copy vim profile
/bin/cp -f ./conf/.vimrc /home/$user/.vimrc

<<<<<<< HEAD
=======

>>>>>>> d0db1055c57ce850e3a43c224898148731c6e929
#cp authorized_keys
/bin/cp -f ./conf/authorized_keys /home/$user/.ssh/

#set permission
/bin/chmod 700 /home/$user/.ssh
/bin/chmod 600 /home/$user/.ssh/authorized_keys
<<<<<<< HEAD
/bin/chown -R $user:$user /home/$user/.ssh
/bin/chown -R $user:$user /home/$user/bin
=======
>>>>>>> d0db1055c57ce850e3a43c224898148731c6e929
