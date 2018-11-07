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