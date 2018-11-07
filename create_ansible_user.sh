> #!/bin/bash
> 
> AUSER=ansibleuser
> PASSWD=ansibleuserpasswd
> useradd $AUSER && echo $AUSER:"$PASSWD" | chpasswd
> usermod -s /bin/bash $AUSER
> mkdir /home/$AUSER
> cp /etc/skel/.* /home/$AUSER
> chown -R $AUSER:$AUSER /home/$AUSER 
> echo "$AUSER ALL=(ALL:ALL) PASSWD: ALL" >> /etc/sudoers
> 