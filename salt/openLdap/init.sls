openLdap_rpm:
  cmd:
    - wait
    - name: rpm -Uvh --force /usr/local/cntv/pkg/nss-pam-ldapd-0.8.13.x86_64.rpm
    - watch:
      - file: openLdap_rpm
  file:
    - name: /usr/local/cntv/pkg/nss-pam-ldapd-0.8.13.x86_64.rpm
    {% if 'CentOS-6' in grains['osfinger'] %}
    - source: salt://openLdap/nss-pam-ldapd-0.8.13.x86_64.rpm._el6
    {% else %}
    - source: salt://openLdap/nss-pam-ldapd-0.8.13.x86_64.rpm._el5
    {% endif %}
    - managed
    - user: root
    - group: root
    - mode: 755
    - require:
      - file: /usr/local/cntv/pkg

openLdap_installScript:
  cmd:
    - wait
    - name: /usr/local/cntv/shell/ldapClientInstall.sh
    - user: root
    - watch:
      - file: openLdap_installScript
  file:
    - name: /usr/local/cntv/shell/ldapClientInstall.sh
    - source: salt://openLdap/ldapClientInstall.sh.jinja
    - template: jinja
    - managed
    - user: root
    - group: root
    - mode: 755
