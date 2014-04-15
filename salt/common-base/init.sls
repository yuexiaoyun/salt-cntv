include:
  - common-base.yumRepo
  - common-base.cntvCms
  - common-base.openLdap
  - common-base.cmdHistoryAudit
  - common-base.zabbixAgent
  - common-base.sshd
  - common-base.rsyslog
  - common-base.sshKeys
  - common-base.monit
  - common-base.cntvSysCmds
  - common-base.baseOptimize
  - common-base.baseSudoers


/usr/local/cntv/_shell:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - makedirs: True
