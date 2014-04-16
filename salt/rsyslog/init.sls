rsyslog:
  pkg:
    - installed
  service:
    - running
    - watch:
      - file: /etc/rsyslog.conf

/etc/rsyslog.conf:
  file.managed:
    - source: salt://rsyslog/rsyslog.conf
    - user: root
    - group: root
    - mode: 664