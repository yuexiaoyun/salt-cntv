httpd:
  pkg:
    - installed

cntvSvnServer_srvStart:
  service:
    - running
    - name: httpd
    - watch:
      - file: /etc/httpd/conf.d/svn-vhost.conf
    - require:
      - pkg: httpd
      - pkg: rsync
      - file: rsync_adminServer-svnServer
      - file: rsync_adminServer-svnServer_passwd
      - file: /etc/rc.local
      - file: /var/www/html/svnadmin

/etc/httpd/conf.d/svn-vhost.conf:
  file.managed:
    - source: salt://project/cntvSvnServer/httpd/conf.d/svn-vhost.conf
    - user: root
    - group: root
    - file_mode: 644

/var/www/html/svnadmin:
  file.recurse:
    - source: salt://project/cntvSvnServer/svnadmin
    - user: apache
    - group: apache
    - file_mode: 755
    - dir_mode: 755