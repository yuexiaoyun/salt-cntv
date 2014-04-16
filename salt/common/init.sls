include:
  - yumRepo
  - cntvCms
  - openLdap
  - rsyslog
  - cmdHistoryAudit
#TODO
#  - monit
#  - zabbixAgent
#  - sshd
#  - rootSshKeys
#  - cntvSysCmds
#  - baseOptimize

/usr/local/cntv/shell:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - makedirs: True

/usr/local/cntv/pkg:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 644
    - makedirs: True

common_pkgs:
  pkg.installed:
    - names:
{% if grains['os_family'] == "RedHat" %}
      - rsync
      - wget
      - gcc
      - make
{% endif %}