/usr/local/monit/bin/monit:
  file.managed:
    - source: salt://monit/bin/monit_5.8.bin
    - user: root
    - group: root
    - mode: 0755
    - makedirs: True
    - dir_mode: 0755

/usr/local/monit/etc/monitrc:
  file.managed:
    - source: salt://monit/etc/monitrc.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0700
    - makedirs: True
    - dir_mode: 0644

/usr/local/monit/etc/inc/system.cfg:
  file.managed:
    - source: salt://monit/etc/inc/system.cfg
    - template: jinja
    - user: root
    - group: root
    - mode: 0700
    - makedirs: True
    - dir_mode: 0644

monit_start:
  cmd.wait:
    - name: /usr/local/monit/bin/monit -c /usr/local/monit/etc/monitrc
    - unless: "`which killall` -0 monit"
    - watch:
      - file: /usr/local/monit/bin/monit
      - file: /usr/local/monit/etc/monitrc
      - file: /usr/local/monit/etc/inc/system.cfg