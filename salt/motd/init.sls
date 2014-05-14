/etc/motd:
  file.managed:
    - user: root
    - group: root
    - file_mode: 644
    - contents: |
        This server is managed by SALTSTACK! roles:
        {% for role in pillar['roles'] -%}
        {{role}}
        {% endfor -%}