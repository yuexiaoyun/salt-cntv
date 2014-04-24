/etc/ssh/sshd_config:
  file.managed:
    - source: salt://sshd/sshd_config
    - template: jinja
    - user: root
    - group: root
    - file_mode: 400