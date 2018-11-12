 ___________________
< PLAY [webservers] >
 -------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

 _______________________
< TASK [start time log] >
 -----------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

fatal: [51.15.226.172]: FAILED! => {"changed": true, "msg": "non-zero return code", "rc": 127, "stderr": "Shared connection to 51.15.226.172 closed.\r\n", "stderr_lines": ["Shared connection to 51.15.226.172 closed."], "stdout": "bash: /usr/bin/date: No such file or directory\r\n", "stdout_lines": ["bash: /usr/bin/date: No such file or directory"]}
fatal: [51.15.253.184]: FAILED! => {"changed": true, "msg": "non-zero return code", "rc": 127, "stderr": "Shared connection to 51.15.253.184 closed.\r\n", "stderr_lines": ["Shared connection to 51.15.253.184 closed."], "stdout": "bash: /usr/bin/date: No such file or directory\r\n", "stdout_lines": ["bash: /usr/bin/date: No such file or directory"]}
changed: [51.15.238.91]
changed: [192.168.0.104]
 ______________
< TASK [debug] >
 --------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [51.15.238.91] => {
    "starttime": {
        "changed": true, 
        "failed": false, 
        "rc": 0, 
        "stderr": "Shared connection to 51.15.238.91 closed.\r\n", 
        "stderr_lines": [
            "Shared connection to 51.15.238.91 closed."
        ], 
        "stdout": "Mon Nov 12 22:33:23 UTC 2018\r\n", 
        "stdout_lines": [
            "Mon Nov 12 22:33:23 UTC 2018"
        ]
    }
}
ok: [192.168.0.104] => {
    "starttime": {
        "changed": true, 
        "failed": false, 
        "rc": 0, 
        "stderr": "Shared connection to 192.168.0.104 closed.\r\n", 
        "stderr_lines": [
            "Shared connection to 192.168.0.104 closed."
        ], 
        "stdout": "Mon Nov 12 17:33:27 EST 2018\r\n", 
        "stdout_lines": [
            "Mon Nov 12 17:33:27 EST 2018"
        ]
    }
}
 ______________________________________________
< TASK [convert_into_role1 : install packages] >
 ----------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [192.168.0.104]
changed: [51.15.238.91]
 ______________________________________________________
< TASK [convert_into_role1 : install list of packages] >
 ------------------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [192.168.0.104] => (item=telnet)
changed: [51.15.238.91] => (item=telnet)
changed: [192.168.0.104] => (item=lynx)
changed: [51.15.238.91] => (item=lynx)
ok: [192.168.0.104] => (item=vim)
ok: [51.15.238.91] => (item=vim)
 ____________________________________________________________
/ TASK [convert_into_role1 : verify that the webs service is \
\ running]                                                   /
 ------------------------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

fatal: [51.15.238.91]: FAILED! => {"changed": true, "cmd": ["systemctl", "status", "httpd"], "delta": "0:00:00.030253", "end": "2018-11-12 22:34:02.666463", "msg": "non-zero return code", "rc": 3, "start": "2018-11-12 22:34:02.636210", "stderr": "", "stderr_lines": [], "stdout": "● httpd.service - The Apache HTTP Server\n   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)\n   Active: inactive (dead)\n     Docs: man:httpd(8)\n           man:apachectl(8)\n\nNov 12 08:56:57 scw-779d1d systemd[1]: Starting The Apache HTTP Server...\nNov 12 08:56:58 scw-779d1d httpd[28080]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message\nNov 12 08:56:58 scw-779d1d systemd[1]: Started The Apache HTTP Server.\nNov 12 08:59:20 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...\nNov 12 08:59:21 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.\nNov 12 11:07:14 scw-779d1d systemd[1]: Starting The Apache HTTP Server...\nNov 12 11:07:14 scw-779d1d httpd[30263]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message\nNov 12 11:07:14 scw-779d1d systemd[1]: Started The Apache HTTP Server.\nNov 12 11:09:52 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...\nNov 12 11:09:54 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.", "stdout_lines": ["● httpd.service - The Apache HTTP Server", "   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)", "   Active: inactive (dead)", "     Docs: man:httpd(8)", "           man:apachectl(8)", "", "Nov 12 08:56:57 scw-779d1d systemd[1]: Starting The Apache HTTP Server...", "Nov 12 08:56:58 scw-779d1d httpd[28080]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message", "Nov 12 08:56:58 scw-779d1d systemd[1]: Started The Apache HTTP Server.", "Nov 12 08:59:20 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...", "Nov 12 08:59:21 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.", "Nov 12 11:07:14 scw-779d1d systemd[1]: Starting The Apache HTTP Server...", "Nov 12 11:07:14 scw-779d1d httpd[30263]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message", "Nov 12 11:07:14 scw-779d1d systemd[1]: Started The Apache HTTP Server.", "Nov 12 11:09:52 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...", "Nov 12 11:09:54 scw-779d1d systemd[1]: Stopped The Apache HTTP Server."]}
...ignoring
fatal: [192.168.0.104]: FAILED! => {"changed": true, "cmd": ["systemctl", "status", "httpd"], "delta": "0:00:00.026521", "end": "2018-11-12 17:34:05.975402", "msg": "non-zero return code", "rc": 3, "start": "2018-11-12 17:34:05.948881", "stderr": "", "stderr_lines": [], "stdout": "● httpd.service - The Apache HTTP Server\n   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)\n   Active: inactive (dead)\n     Docs: man:httpd(8)\n           man:apachectl(8)\n\nNov 12 03:57:00 hos.localdomain systemd[1]: Starting The Apache HTTP Server...\nNov 12 03:57:00 hos.localdomain httpd[10916]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message\nNov 12 03:57:00 hos.localdomain systemd[1]: Started The Apache HTTP Server.\nNov 12 03:59:11 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...\nNov 12 03:59:12 hos.localdomain systemd[1]: Stopped The Apache HTTP Server.\nNov 12 06:07:16 hos.localdomain systemd[1]: Starting The Apache HTTP Server...\nNov 12 06:07:17 hos.localdomain httpd[12968]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message\nNov 12 06:07:17 hos.localdomain systemd[1]: Started The Apache HTTP Server.\nNov 12 06:10:02 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...\nNov 12 06:10:03 hos.localdomain systemd[1]: Stopped The Apache HTTP Server.", "stdout_lines": ["● httpd.service - The Apache HTTP Server", "   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)", "   Active: inactive (dead)", "     Docs: man:httpd(8)", "           man:apachectl(8)", "", "Nov 12 03:57:00 hos.localdomain systemd[1]: Starting The Apache HTTP Server...", "Nov 12 03:57:00 hos.localdomain httpd[10916]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message", "Nov 12 03:57:00 hos.localdomain systemd[1]: Started The Apache HTTP Server.", "Nov 12 03:59:11 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...", "Nov 12 03:59:12 hos.localdomain systemd[1]: Stopped The Apache HTTP Server.", "Nov 12 06:07:16 hos.localdomain systemd[1]: Starting The Apache HTTP Server...", "Nov 12 06:07:17 hos.localdomain httpd[12968]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message", "Nov 12 06:07:17 hos.localdomain systemd[1]: Started The Apache HTTP Server.", "Nov 12 06:10:02 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...", "Nov 12 06:10:03 hos.localdomain systemd[1]: Stopped The Apache HTTP Server."]}
...ignoring
 ________________________________________________________
< TASK [convert_into_role1 : log all installed packages] >
 --------------------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [51.15.238.91]
changed: [192.168.0.104]
 ___________________________________
< TASK [convert_into_role1 : debug] >
 -----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [51.15.238.91] => {
    "webserviceresult": {
        "changed": true, 
        "cmd": [
            "systemctl", 
            "status", 
            "httpd"
        ], 
        "delta": "0:00:00.030253", 
        "end": "2018-11-12 22:34:02.666463", 
        "failed": true, 
        "msg": "non-zero return code", 
        "rc": 3, 
        "start": "2018-11-12 22:34:02.636210", 
        "stderr": "", 
        "stderr_lines": [], 
        "stdout": "● httpd.service - The Apache HTTP Server\n   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)\n   Active: inactive (dead)\n     Docs: man:httpd(8)\n           man:apachectl(8)\n\nNov 12 08:56:57 scw-779d1d systemd[1]: Starting The Apache HTTP Server...\nNov 12 08:56:58 scw-779d1d httpd[28080]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message\nNov 12 08:56:58 scw-779d1d systemd[1]: Started The Apache HTTP Server.\nNov 12 08:59:20 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...\nNov 12 08:59:21 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.\nNov 12 11:07:14 scw-779d1d systemd[1]: Starting The Apache HTTP Server...\nNov 12 11:07:14 scw-779d1d httpd[30263]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message\nNov 12 11:07:14 scw-779d1d systemd[1]: Started The Apache HTTP Server.\nNov 12 11:09:52 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...\nNov 12 11:09:54 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.", 
        "stdout_lines": [
            "● httpd.service - The Apache HTTP Server", 
            "   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)", 
            "   Active: inactive (dead)", 
            "     Docs: man:httpd(8)", 
            "           man:apachectl(8)", 
            "", 
            "Nov 12 08:56:57 scw-779d1d systemd[1]: Starting The Apache HTTP Server...", 
            "Nov 12 08:56:58 scw-779d1d httpd[28080]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message", 
            "Nov 12 08:56:58 scw-779d1d systemd[1]: Started The Apache HTTP Server.", 
            "Nov 12 08:59:20 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...", 
            "Nov 12 08:59:21 scw-779d1d systemd[1]: Stopped The Apache HTTP Server.", 
            "Nov 12 11:07:14 scw-779d1d systemd[1]: Starting The Apache HTTP Server...", 
            "Nov 12 11:07:14 scw-779d1d httpd[30263]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using 127.0.0.1. Set the 'ServerName' directive globally to suppress this message", 
            "Nov 12 11:07:14 scw-779d1d systemd[1]: Started The Apache HTTP Server.", 
            "Nov 12 11:09:52 scw-779d1d systemd[1]: Stopping The Apache HTTP Server...", 
            "Nov 12 11:09:54 scw-779d1d systemd[1]: Stopped The Apache HTTP Server."
        ]
    }
}
ok: [192.168.0.104] => {
    "webserviceresult": {
        "changed": true, 
        "cmd": [
            "systemctl", 
            "status", 
            "httpd"
        ], 
        "delta": "0:00:00.026521", 
        "end": "2018-11-12 17:34:05.975402", 
        "failed": true, 
        "msg": "non-zero return code", 
        "rc": 3, 
        "start": "2018-11-12 17:34:05.948881", 
        "stderr": "", 
        "stderr_lines": [], 
        "stdout": "● httpd.service - The Apache HTTP Server\n   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)\n   Active: inactive (dead)\n     Docs: man:httpd(8)\n           man:apachectl(8)\n\nNov 12 03:57:00 hos.localdomain systemd[1]: Starting The Apache HTTP Server...\nNov 12 03:57:00 hos.localdomain httpd[10916]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message\nNov 12 03:57:00 hos.localdomain systemd[1]: Started The Apache HTTP Server.\nNov 12 03:59:11 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...\nNov 12 03:59:12 hos.localdomain systemd[1]: Stopped The Apache HTTP Server.\nNov 12 06:07:16 hos.localdomain systemd[1]: Starting The Apache HTTP Server...\nNov 12 06:07:17 hos.localdomain httpd[12968]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message\nNov 12 06:07:17 hos.localdomain systemd[1]: Started The Apache HTTP Server.\nNov 12 06:10:02 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...\nNov 12 06:10:03 hos.localdomain systemd[1]: Stopped The Apache HTTP Server.", 
        "stdout_lines": [
            "● httpd.service - The Apache HTTP Server", 
            "   Loaded: loaded (/usr/lib/systemd/system/httpd.service; disabled; vendor preset: disabled)", 
            "   Active: inactive (dead)", 
            "     Docs: man:httpd(8)", 
            "           man:apachectl(8)", 
            "", 
            "Nov 12 03:57:00 hos.localdomain systemd[1]: Starting The Apache HTTP Server...", 
            "Nov 12 03:57:00 hos.localdomain httpd[10916]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message", 
            "Nov 12 03:57:00 hos.localdomain systemd[1]: Started The Apache HTTP Server.", 
            "Nov 12 03:59:11 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...", 
            "Nov 12 03:59:12 hos.localdomain systemd[1]: Stopped The Apache HTTP Server.", 
            "Nov 12 06:07:16 hos.localdomain systemd[1]: Starting The Apache HTTP Server...", 
            "Nov 12 06:07:17 hos.localdomain httpd[12968]: AH00558: httpd: Could not reliably determine the server's fully qualified domain name, using hos.localdomain. Set the 'ServerName' directive globally to suppress this message", 
            "Nov 12 06:07:17 hos.localdomain systemd[1]: Started The Apache HTTP Server.", 
            "Nov 12 06:10:02 hos.localdomain systemd[1]: Stopping The Apache HTTP Server...", 
            "Nov 12 06:10:03 hos.localdomain systemd[1]: Stopped The Apache HTTP Server."
        ]
    }
}
 ____________________________________________________
< RUNNING HANDLER [convert_into_role1 : start_httpd] >
 ----------------------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [51.15.238.91]
changed: [192.168.0.104]
 _____________________
< TASK [end time log] >
 ---------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [192.168.0.104]
changed: [51.15.238.91]
 ______________
< TASK [debug] >
 --------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [51.15.238.91] => {
    "endtime": {
        "changed": true, 
        "failed": false, 
        "rc": 0, 
        "stderr": "Shared connection to 51.15.238.91 closed.\r\n", 
        "stderr_lines": [
            "Shared connection to 51.15.238.91 closed."
        ], 
        "stdout": "Mon Nov 12 22:34:06 UTC 2018\r\n", 
        "stdout_lines": [
            "Mon Nov 12 22:34:06 UTC 2018"
        ]
    }
}
ok: [192.168.0.104] => {
    "endtime": {
        "changed": true, 
        "failed": false, 
        "rc": 0, 
        "stderr": "Shared connection to 192.168.0.104 closed.\r\n", 
        "stderr_lines": [
            "Shared connection to 192.168.0.104 closed."
        ], 
        "stdout": "Mon Nov 12 17:34:09 EST 2018\r\n", 
        "stdout_lines": [
            "Mon Nov 12 17:34:09 EST 2018"
        ]
    }
}
	to retry, use: --limit @/home/ajn/github/ansible_training/roleprj1/roles/convert_into_role1.retry
 ____________
< PLAY RECAP >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

192.168.0.104              : ok=10   changed=7    unreachable=0    failed=0   
51.15.226.172              : ok=0    changed=0    unreachable=0    failed=1   
51.15.238.91               : ok=10   changed=7    unreachable=0    failed=0   
51.15.253.184              : ok=0    changed=0    unreachable=0    failed=1   

