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

ok: [51.15.226.172]
ok: [51.15.238.91]
ok: [192.168.0.104]
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
/ TASK [redhat_webservers : Install (RehHat/Centos) Apache \
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
 __________________________________
< TASK [redhat_webservers : shell] >
 ----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

skipping: [51.15.226.172]
skipping: [51.15.253.184]
FAILED - RETRYING: redhat_webservers : command (5 retries left).
FAILED - RETRYING: redhat_webservers : command (5 retries left).
FAILED - RETRYING: redhat_webservers : command (4 retries left).
FAILED - RETRYING: redhat_webservers : command (4 retries left).
FAILED - RETRYING: redhat_webservers : command (3 retries left).
FAILED - RETRYING: redhat_webservers : command (3 retries left).
FAILED - RETRYING: redhat_webservers : command (2 retries left).
FAILED - RETRYING: redhat_webservers : command (2 retries left).
FAILED - RETRYING: redhat_webservers : command (1 retries left).
FAILED - RETRYING: redhat_webservers : command (1 retries left).
changed: [192.168.0.104]
fatal: [51.15.238.91]: FAILED! => {"attempts": 5, "changed": true, "cmd": "systemctl status httpd", "delta": "0:00:00.023672", "end": "2018-11-12 22:46:14.123580", "msg": "non-zero return code", "rc": 3, "start": "2018-11-12 22:46:14.099908", "stderr": "", "stderr_lines": [], "stdout": "● httpd.service - The Apache HTTP Server\n   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)\n   Active: inactive (dead)\n     Docs: man:httpd(8)\n           man:apachectl(8)\n\nNov 12 11:07:14 scw-779d1d systemd[1]: Starting The Apache HTTP Server...\nNov 12 11:07:14 scw-779d1d httpd[30263]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message\nNov 12 11:07:14 scw-779d1d systemd[1]: Started The Apache HTTP Server.\nNov 12 11:09:52 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...\nNov 12 11:09:54 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.\nNov 12 22:34:05 scw-779d1d systemd[1]: Starting The Apache HTTP Server...\nNov 12 22:34:05 scw-779d1d httpd[2914]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message\nNov 12 22:34:06 scw-779d1d systemd[1]: Started The Apache HTTP Server.\nNov 12 22:37:37 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...\nNov 12 22:37:38 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.", "stdout_lines": ["● httpd.service - The Apache HTTP Server", "   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)", "   Active: inactive (dead)", "     Docs: man:httpd(8)", "           man:apachectl(8)", "", "Nov 12 11:07:14 scw-779d1d systemd[1]: Starting The Apache HTTP Server...", "Nov 12 11:07:14 scw-779d1d httpd[30263]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message", "Nov 12 11:07:14 scw-779d1d systemd[1]: Started The Apache HTTP Server.", "Nov 12 11:09:52 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...", "Nov 12 11:09:54 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.", "Nov 12 22:34:05 scw-779d1d systemd[1]: Starting The Apache HTTP Server...", "Nov 12 22:34:05 scw-779d1d httpd[2914]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message", "Nov 12 22:34:06 scw-779d1d systemd[1]: Started The Apache HTTP Server.", "Nov 12 22:37:37 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...", "Nov 12 22:37:38 scw-779d1d systemd[1]: Stopped The Apache HTTP Server."]}
 __________________________________
< TASK [redhat_webservers : debug] >
 ----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

skipping: [51.15.226.172]
skipping: [51.15.253.184]
ok: [192.168.0.104] => {
    "result": {
        "attempts": 6, 
        "changed": true, 
        "cmd": "systemctl status httpd", 
        "delta": "0:00:00.025828", 
        "end": "2018-11-12 17:46:17.393886", 
        "failed": false, 
        "rc": 0, 
        "start": "2018-11-12 17:46:17.368058", 
        "stderr": "", 
        "stderr_lines": [], 
        "stdout": "● httpd.service - The Apache HTTP Server\n   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)\n   Active: active (running) since Mon 2018-11-12 17:46:15 EST; 1s ago\n     Docs: man:httpd(8)\n           man:apachectl(8)\n Main PID: 15159 (httpd)\n   Status: \"Processing requests...\"\n   CGroup: /system.slice/httpd.service\n           ├─15159 /usr/sbin/httpd -DFOREGROUND\n           ├─15160 /usr/sbin/httpd -DFOREGROUND\n           ├─15161 /usr/sbin/httpd -DFOREGROUND\n           ├─15162 /usr/sbin/httpd -DFOREGROUND\n           ├─15163 /usr/sbin/httpd -DFOREGROUND\n           └─15164 /usr/sbin/httpd -DFOREGROUND\n\nNov 12 17:46:15 hos.localdomain systemd[1]: Starting The Apache HTTP Server...\nNov 12 17:46:15 hos.localdomain httpd[15159]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message\nNov 12 17:46:15 hos.localdomain systemd[1]: Started The Apache HTTP Server.", 
        "stdout_lines": [
            "● httpd.service - The Apache HTTP Server", 
            "   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)", 
            "   Active: active (running) since Mon 2018-11-12 17:46:15 EST; 1s ago", 
            "     Docs: man:httpd(8)", 
            "           man:apachectl(8)", 
            " Main PID: 15159 (httpd)", 
            "   Status: \"Processing requests...\"", 
            "   CGroup: /system.slice/httpd.service", 
            "           ├─15159 /usr/sbin/httpd -DFOREGROUND", 
            "           ├─15160 /usr/sbin/httpd -DFOREGROUND", 
            "           ├─15161 /usr/sbin/httpd -DFOREGROUND", 
            "           ├─15162 /usr/sbin/httpd -DFOREGROUND", 
            "           ├─15163 /usr/sbin/httpd -DFOREGROUND", 
            "           └─15164 /usr/sbin/httpd -DFOREGROUND", 
            "", 
            "Nov 12 17:46:15 hos.localdomain systemd[1]: Starting The Apache HTTP Server...", 
            "Nov 12 17:46:15 hos.localdomain httpd[15159]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message", 
            "Nov 12 17:46:15 hos.localdomain systemd[1]: Started The Apache HTTP Server."
        ]
    }
}
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
changed: [192.168.0.104]
	to retry, use: --limit @/home/ajn/github/ansible_training/roleprj1/roles/run_task_until/webservers.retry
 ____________
< PLAY RECAP >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

192.168.0.104              : ok=6    changed=4    unreachable=0    failed=0   
51.15.226.172              : ok=3    changed=2    unreachable=0    failed=0   
51.15.238.91               : ok=3    changed=2    unreachable=0    failed=1   
51.15.253.184              : ok=3    changed=2    unreachable=0    failed=0   

