#!/bin/bash -x

#make bin directory
/bin/mkdir /home/morinor/bin

#copy bash profile
/bin/cp /home/morinor/.bashrc /home/morinor/.bashrc.old
/bin/cp -f  ./conf/.bashrc /home/morinor/.bashrc

#cp authorized_keys
/bin/cp -f ./conf/authorized_keys /home/morinor/.ssh/
