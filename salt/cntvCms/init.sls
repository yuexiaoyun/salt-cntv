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
      - pkg: rsync
      - file: /usr/local/cntv/shell/cntvCmsSetup.sh
      - file: /etc/cntvCms/rsyncd.conf
      - file: /etc/cntvCms/rsyncd.secrets

/usr/local/cntv/shell/cntvCmsSetup.sh:
  file.managed:
    - source: salt://cntvCms/cntvCmsSetup.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - file: /usr/local/cntv/shell

/etc/cntvCms/rsyncd.conf:
  file.managed:
    - source: salt://cntvCms/rsyncd.conf
    - user: root
    - group: root
    - mode: 0644
    - require:
      - file: /etc/cntvCms

/etc/cntvCms/rsyncd.secrets:
  file.managed:
    - source: salt://cntvCms/rsyncd.secrets.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0400
    - require:
      - file: /etc/cntvCms

/etc/cntvCms:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 644
    - makedirs: True