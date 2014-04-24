base:
  'roles:common-base':
    - match: pillar
    - common
  'roles:adminServer-svnServer':
    - match: pillar
    - project.cntvSvnServer

#  'I@roles:adminServer-svnServer or I@roles:adminServer-svnServer-cluster63.228':
#    - match: compound