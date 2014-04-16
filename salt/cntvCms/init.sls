rsync:
  pkg:
    - installed

#执行安装脚本
cntvCms_installScript:
  cmd:
    - wait
    - name: /usr/local/cntv/shell/cntvCmsSetup.sh
    - user: root
    - group: root
    - watch:
      - pkg: rsync
      - file: /usr/local/cntv/shell/cntvCmsSetup.sh
      - file: /etc/cntvCms/rsyncd.conf
      - file: /etc/cntvCms/rsyncd.secrets

/usr/local/cntv/shell/cntvCmsSetup.sh:
  file.managed:
    - source: salt://cntvCms/cntvCmsSetup.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - file: /usr/local/cntv/shell

/etc/cntvCms/rsyncd.conf:
  file.managed:
    - source: salt://cntvCms/rsyncd.conf
    - user: root
    - group: root
    - mode: 0644
    - require:
      - file: /etc/cntvCms

/etc/cntvCms/rsyncd.secrets:
  file.managed:
    - source: salt://cntvCms/rsyncd.secrets.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 0400
    - require:
      - file: /etc/cntvCms

/etc/cntvCms:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 644
    - makedirs: True

#创建用户，分发sshkey
autoOps:
  user.present:
    - shell: /bin/bash
    - home: /home/autoOps
    - uid: 7878
    - groups:
      - wheel

/home/autoOps/.ssh/authorized_keys:
  file.managed:
    - user: autoOps
    - group: autoOps
    - mode: 0600
    - dir_mode: 0700
    - makedirs: True
    - contents_pillar: myShadow:sshKey_pub:autoOps
    - require:
      - user: autoOps

#向控制中心发布私钥
{% if "adminServer-centralControl" in pillar["roles"] %}
/home/autoOps/.ssh/id_rsa:
  file.managed:
    - user: autoOps
    - group: autoOps
    - mode: 0600
    - dir_mode: 0700
    - makedirs: True
    - contents_pillar: myShadow:sshKey_priv:autoOps
    - require:
      - user: autoOps
/home/autoOps/.ssh/id_rsa.pub:
  file.managed:
    - user: autoOps
    - group: autoOps
    - mode: 0644
    - dir_mode: 0700
    - makedirs: True
    - contents_pillar: myShadow:sshKey_pub:autoOps
    - require:
      - user: autoOps
{% endif %}