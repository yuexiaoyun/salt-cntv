/etc/yum.repos.d/cntvInternal.repo:
  file.managed:
    - source: salt://yumRepo/cntvInternal.repo
    - user: root
    - group: root
    - mode: 664

yumRepo_mkCache:
  cmd.wait:
    - name: yum makecache
    - timeout: 45
    - watch:
      - file: /etc/yum.repos.d/cntvInternal.repo