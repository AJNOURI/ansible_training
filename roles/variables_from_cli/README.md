

As an example, in the main playbook "webservers.yml" replace some values with variable **'{{ var }}'**

```
--- # Master playbook for web server
- hosts: '{{ hosts }}' 
  become: yes
  become_user: '{{ user }}'
  connection: ssh
  pre_tasks:
  - name: Record start time of the role
    raw: date > /home/ajn/roletimetrack.log
  roles:
  - { role: redhat_webservers, when: "ansible_os_family == 'RedHat'" }
  - { role: debian_webservers, when: "ansible_os_family == 'Debian'" }
  post_tasks:
  - name: Record end time of the role 
    raw: date >> /home/ajn/roletimetrack.log
```

Now you can pass the variables to the command using the option **--extra-vars "var1=value1 var2=value2 ..."**

```
ansible-playbook webservers.yml --extra-vars "hosts=webservers user=root" 
```

___________________
< PLAY [webservers] >
 -------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

 ________________________
< TASK [Gathering Facts] >
 ------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [51.15.238.91]
ok: [192.168.0.104]
ok: [51.15.226.172]
ok: [51.15.253.184]
 ______________________________________
< TASK [Record start time of the role] >
 --------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [51.15.226.172]
changed: [51.15.253.184]
changed: [51.15.238.91]
changed: [192.168.0.104]
 __________________________________________________________
/ TASK [redhat_webservers : Install (RedHat/CentOS) Apache \
\ web server]                                              /
 ----------------------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

skipping: [51.15.226.172]
skipping: [51.15.253.184]
changed: [192.168.0.104]
changed: [51.15.238.91]
 __________________________________________________________
/ TASK [debian_webservers : Install (Debian/Ubuntu) Apache \
\ web server]                                              /
 ----------------------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

skipping: [51.15.238.91]
skipping: [192.168.0.104]
ok: [51.15.226.172]
ok: [51.15.253.184]
 ____________________________________
< TASK [Record end time of the role] >
 ------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [51.15.226.172]
changed: [51.15.253.184]
changed: [51.15.238.91]
changed: [192.168.0.104]
 ____________
< PLAY RECAP >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

192.168.0.104              : ok=4    changed=3    unreachable=0    failed=0   
51.15.226.172              : ok=4    changed=2    unreachable=0    failed=0   
51.15.238.91               : ok=4    changed=3    unreachable=0    failed=0   
51.15.253.184              : ok=4    changed=2    unreachable=0    failed=0   

