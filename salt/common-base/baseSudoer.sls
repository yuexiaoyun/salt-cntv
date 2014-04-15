rsync:
  pkg:
    - installed

setupCntvCms:
  cmd:
    - wait
    - name: /usr/local/cntv/_shell/cntvCmsSetup.sh
    - user: root
    - group: root
    - watch:
      - file: setupCntvCms
  file:
    - name: /usr/local/cntv/_shell/cntvCmsSetup.sh
    - managed
    - source: salt://common-base/_shell/cntvCmsSetup.sh
    - user: root
    - group: root
    - mode: 755
    - require:
      - file: /usr/local/cntv/_shell