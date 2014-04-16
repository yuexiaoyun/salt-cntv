/home/autoOps/.ssh/authorized_keys:
  file.managed:
    - user: autoOps
    - group: autoOps
    - mode: 600
    - contents_pillar: userdata:deployer:id_rsa