/etc/profile.d/zz_hist.sh:
  file.managed:
    - source: salt://cmdHistoryAudit/zz_hist.sh
    - user: root
    - group: root
    - mode: 755

/usr/local/cntv/shell/sys_changeAuditLogPerm.sh:
  file.managed:
    - source: salt://cmdHistoryAudit/sys_changeAuditLogPerm.sh
    - user: root
    - group: root
    - mode: 755
  cron.present:
    - identifier: sys_changeAuditLogPerm
    - user: root
    - minute: '0'
    - hour: '0'