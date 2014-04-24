cntvCms_cmdStart:
  cmd.wait:
    - name: "/usr/bin/rsyncCntvCms --daemon --config=/etc/cntvCms/rsyncd.conf --port 7878 &"
    - user: root
    - watch:
      - file: /etc/cntvCms/rsyncd.conf
      - file: /etc/cntvCms/rsyncd.secrets
    - require:
      - user: autoOps
      - file: /etc/rc.local
      - pkg: rsync

/etc/cntvCms/rsyncd.conf:
  file.managed:
    - source: salt://cntvCms/rsyncd.conf
    - user: root
    - group: root
    - file_mode: 644
    - dir_mode: 644
    - makedirs: True

/etc/cntvCms/rsyncd.secrets:
  file.managed:
    - source: salt://cntvCms/rsyncd.secrets.jinja
    - template: jinja
    - user: root
    - group: root
    - file_mode: 400
    - dir_mode: 644
    - makedirs: True
