openLdap_rpm:
  cmd.wait:
    - name: rpm -Uvh --force /usr/local/cntv/pkg/nss-pam-ldapd-0.8.13.x86_64.rpm
    - user: root
    - watch:
      - file: /usr/local/cntv/pkg/nss-pam-ldapd-0.8.13.x86_64.rpm

/usr/local/cntv/pkg/nss-pam-ldapd-0.8.13.x86_64.rpm:
  file.managed:
    {% if 'CentOS-6' in grains['osfinger'] %}
    - source: salt://openLdap/nss-pam-ldapd-0.8.13.x86_64.rpm._el6
    {% else %}
    - source: salt://openLdap/nss-pam-ldapd-0.8.13.x86_64.rpm._el5
    {% endif %}
    - user: root
    - group: root
    - mode: 755
    - require:
      - file: /usr/local/cntv/pkg

openLdap_installScript:
  cmd.wait:
    - name: /usr/local/cntv/shell/ldapClientInstall.sh
    - user: root
    - watch:
      - file: /usr/local/cntv/shell/ldapClientInstall.sh

/usr/local/cntv/shell/ldapClientInstall.sh:
  file.managed:
    - source: salt://openLdap/ldapClientInstall.sh.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 755
    - require:
      - file: /usr/local/cntv/shell