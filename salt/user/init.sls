#用户
{% for username in pillar['myShadow']['system'] %}
{% set user = pillar['myShadow']['system'][username] %}

{{username}}:
  user.present:
    - home: {{user.home}}
{% if 'uid' in user %}
    - uid: {{user.uid}}
{% endif %}
{% if 'shell' in user %}
    - shell: {{user.shell}}
{% endif %}
{% if 'groups' in user %}
    - groups: {{user.groups}}
#{% for group in user.groups %}
#    - groups: {{group}}
#{% endfor %}
{% endif %}

{{user.home}}/.ssh/authorized_keys:
  file.managed:
    - user: {{username}}
    - group: {{username}}
    - file_mode: 600
    - dir_mode: 700
    - makedirs: True
    - contents_pillar: myShadow:system:{{username}}:sshKey_pub
    - require:
      - user: {{username}}
{% endfor %}

#中央服务器复制root的sshkey
{% if "adminServer-centralControl" in pillar['roles'] %}
/root/.ssh/id_rsa:
  file.managed:
    - user: root
    - group: root
    - file_mode: 600
    - dir_mode: 700
    - makedirs: True
    - contents_pillar: myShadow:system:root:sshKey_priv
    - require:
      - user: root
/root/.ssh/id_rsa.pub:
  file.managed:
    - user: root
    - group: root
    - file_mode: 0644
    - dir_mode: 700
    - makedirs: True
    - contents_pillar: myShadow:system:root:sshKey_pub
    - require:
      - user: root
{% endif %}