yumRepo:
  file.managed:
    - name: /etc/yum.repos.d/cntvInternal.repo
    - source: salt://common-base/etc/yum.repos.d/cntvInternal.repo
    - user: root
    - group: root
    - mode: 664

mkCache:
  cmd:
    - wait
    - name: yum makecache
    - timeout: 45
    - watch:
      - file: yumRepo
