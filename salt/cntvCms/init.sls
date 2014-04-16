rsync:
  pkg:
    - installed

cntvCms_installScript:
  cmd:
    - wait
    - name: /usr/local/cntv/shell/cntvCmsSetup.sh
    - user: root
    - group: root
    - watch:
      - file: cntvCms_installScript
      - file: cntvCms_rsyncConf
      - file: cntvCms_rsyncSecret
      - pkg: rsync
  file:
    - name: /usr/local/cntv/shell/cntvCmsSetup.sh
    - managed
    - source: salt://cntvCms/cntvCmsSetup.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - file: /usr/local/cntv/shell

cntvCms_rsyncConf:
  file:
    - name: /etc/cntvCms/rsyncd.conf
    - managed
    - source: salt://cntvCms/rsyncd.conf
    - user: root
    - group: root
    - mode: 0644
    - require:
      - file: /usr/local/cntv/shell
      - file: /etc/cntvCms

cntvCms_rsyncSecret:
  file:
    - name: /etc/cntvCms/rsyncd.secrets
    - managed
    - source: salt://cntvCms/rsyncd.secrets.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0400
    - require:
      - file: /usr/local/cntv/shell
      - file: /etc/cntvCms

/etc/cntvCms:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 644
    - makedirs: True