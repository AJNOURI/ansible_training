#!/bin/bash                                                                                                                                              
#set -ex                                                                                                                                                 
                                                                                                                                                         
                                                                                                                                                         
AUSER=user5 
useradd $AUSER
passwd $AUSER
usermod -s /bin/bash $AUSER
mkdir /home/$AUSER
cp /etc/skel/.* /home/$AUSER
chown -R $AUSER:$AUSER /home/$AUSER 
echo "$AUSER ALL=(ALL:ALL) PASSWD: ALL" >> /etc/sudoers
