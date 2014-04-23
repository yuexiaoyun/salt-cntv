include:
  - yumRepo
  - cntvSysCmds
  - cntvCms
  - openLdap
  - rsyslog
  - cmdHistoryAudit
  - monit
  - zabbixAgent
  - sshd
  - user
#TODO
#  - sshd
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

#用户安全
unlockPasswd:
  cmd.run:
    - name: chattr -i /etc/passwd /etc/shadow /etc/group /etc/gshadow
    - user: root
    - order: 1

lockPasswd:
  cmd.run:
    - name: chattr +i /etc/passwd /etc/shadow /etc/group /etc/gshadow
    - user: root
    - order: last