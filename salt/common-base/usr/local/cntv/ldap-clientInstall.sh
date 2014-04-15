#!/bin/bash

chattr -i /etc/passwd /etc/shadow /etc/group /etc/gshadow
[ -f /tmp/ldap_client.config ] && source /tmp/ldap_client.config || { echo "no config file!!"; exit 1; }

killall -9 nslcd

yum remove -y sssd oddjobd
rpm -Uvh --force $rpmFile

authconfig --enableshadow --enablelocauthorize --enableldap --enableldapauth \
--ldapserver="$uri" --ldapbasedn="$baseDN" \
--enablemkhomedir --enableldaptls --updateall

echo "
uid nobody
gid nobody
uri $uri
base $baseDN
bind_timelimit 5
timelimit 10
ssl start_tls
tls_reqcert never
pam_password_prohibit_message \"Please visit http://10.70.36.196/ssp to change your password.\"
pam_authz_search (&(objectClass=posixGroup)($allowGroups)(memberUid=\$uid))
" > /etc/nslcd.conf

echo "
uri $uri
base $baseDN
bind_timelimit 5
timelimit 10
ssl start_tls
tls_reqcert never
" > /etc/openldap/ldap.conf

/sbin/nslcd
grep "/sbin/nslcd" /etc/rc.local || echo "/sbin/nslcd" >> /etc/rc.local

getent passwd |grep ldaptest && echo "成功！" || { echo "失败！"; exit 1; }

chattr +i /etc/passwd /etc/shadow /etc/group /etc/gshadow
