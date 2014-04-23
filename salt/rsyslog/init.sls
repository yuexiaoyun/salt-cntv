rsyslog:
  pkg:
    - installed
  service:
    - running
    - watch:
      - file: /etc/rsyslog.conf

/etc/rsyslog.conf:
  file.managed:
{% if "adminServer-centralControl" in pillar['roles'] %}
    - source: salt://rsyslog/rsyslog_adminServer.conf
{% else %}
    - source: salt://rsyslog/rsyslog.conf
{% endif %}
    - user: root
    - group: root
    - mode: 664
