include:
  - yumRepo
  - cntvCms
  - openLdap
  - rsyslog
  - common.cmdHistoryAudit
  - common.zabbixAgent
  - common.sshd
  - common.sshKeys
  - common.monit
  - common.cntvSysCmds
  - common.baseOptimize
  - common.baseSudoers


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