rpm:
  cmd:
    - wait
    - name: rpm -Uvh /usr/local/cntv/rpmPackage/nss-pam-ldapd-0.8.13.x86_64.rpm
    - watch:
      - file: rpm
  file:
    - name: /usr/local/cntv/rpmPackage/nss-pam-ldapd-0.8.13.x86_64.rpm
    {% if 'CentOS-6' in grains['osfinger'] %}
    - source: salt://common-base/usr/local/cntv/rpmPackage/nss-pam-ldapd-0.8.13.x86_64.rpm._el6
    {% else %}
    - source: salt://common-base/usr/local/cntv/rpmPackage/nss-pam-ldapd-0.8.13.x86_64.rpm._el5
    {% endif %}
    - managed
    - user: root
    - group: root
    - mode: 755

openLdapSetup:
  cmd:
    - wait
    - name: /usr/local/cntv/shell/ldap-clientInstall.sh
    - user: root
    - watch:
      - file: openLdapSetup
  file:
    - name: /usr/local/cntv/shell/ldap-clientInstall.sh
    - source: salt://common-base/shell/ldap-clientInstall.sh.jinja
    - managed
    - user: root
    - group: root
    - mode: 755
    - template: jinja