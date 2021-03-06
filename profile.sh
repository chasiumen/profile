#!/bin/bash -x
user='morinor'

#make bin directory
/bin/mkdir /home/$user/bin
/bin/mkdir /home/$user/.ssh

#copy bash profile
/bin/cp /home/$user/.bashrc /home/$user/.bashrc.old
/bin/cp -f  ./conf/.bashrc /home/$user/.bashrc

#Vim
#install vim
sudo /usr/bin/yum install -y vim

#copy vim profile
/bin/cp -f ./conf/.vimrc /home/$user/.vimrc

#cp authorized_keys
/bin/cp -f ./conf/authorized_keys /home/$user/.ssh/

#set permission
/bin/chmod 700 /home/$user/.ssh
/bin/chmod 600 /home/$user/.ssh/authorized_keys
/bin/chown -R $user:$user /home/$user/.ssh
/bin/chown -R $user:$user /home/$user/bin
