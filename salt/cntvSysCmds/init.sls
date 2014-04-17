/usr/local/cntv:
  file.recurse:
    - source: salt://cntvSysCmds/files
    - user: root
    - group: root
    - file_mode: 0755
    - makedirs: True
    - dir_mode: 0755
    - order: 1