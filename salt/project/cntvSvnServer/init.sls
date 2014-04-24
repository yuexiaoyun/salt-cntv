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

/etc/httpd/conf.d/svn-vhost.conf:
  file.managed:
    - source: salt://project/cntvSvnServer/httpd/conf.d/svn-vhost.conf
    - user: root
    - group: root
    - file_mode: 644