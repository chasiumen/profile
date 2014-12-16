#!/bin/bash -x
user='morinor'

#make bin directory
/bin/mkdir /home/$user/bin

#copy bash profile
/bin/cp /home/$user/.bashrc /home/$user/.bashrc.old
/bin/cp -f  ./conf/.bashrc /home/$user/.bashrc

#install vim
/usr/bin/yum install -y vim-enhanced

#copy vim profile
/bin/cp -f ./conf/.vimrc /home/$user/.vimrc

#cp authorized_keys
/bin/cp -f ./conf/authorized_keys /home/$user/.ssh/

#set permission
/bin/chmod 700 /home/$user/.ssh
/bin/chmod 600 /home/$user/.ssh/authorized_keys
