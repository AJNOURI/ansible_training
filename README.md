# Ansible hands-on practice labs.


## On the target server:

- Create the privileged user with which you will run ansible playbooks 

```
useradd ansibleuser
passwd ansibleuser
usermod -s /bin/bash ansibleuser
mkdir /home/ansibleuser
cp /etc/skel/.* /home/ansibleuser
chown -R ansibleuser:ansibleuser /home/ansibleuser
```

Or you might be interrested in doing that remotely with a script (Careful with the password!!!)

ex: create_ansible_user.sh


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

`ssh root@managedhost 'bash -s' < create_ansible_user.sh`


- Add the user to  **_/etc/sudoers_** and allow it to use sudo without password

`ansibleuser ALL=(ALL:ALL) PASSWD: ALL`


- On the control machine (Ansible):
 
- Log in as Ansible user:

`su ansibleuser`

- Generate a pair of RSA keys:

` ssh-keygen`

- Copy the public key to the target server

`ssh-copy-id ansibleuser@managedhost `




## Preparing the environment on the ansible machine


- In ansible config file **_/etc/ansible/ansible.cfg_**

```
sudo_user      = ajn
#ask_sudo_pass = True
#ask_pass      = True
```

- in the playbook: **_debianservers.yml_**

```
  become: yes
  become_user: ajn
```
