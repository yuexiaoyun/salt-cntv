base:
  '*':
    - yumRepo
    - cntvCms
    - openLdap
    - cmdHistoryAudit
    - zabbixAgent
    - sshd
    - rsyslog
    - autoOpsSshKey
    - rootSshKey
    - monit
    - cntvSysCmds
    - baseOptimize
    - baseSudoer
  'roles:nginx_1.4':
    - match: grain
    - nginx_1.4
  'roles:apache_2.2':
    - match: grain
    - apache_2.2