base:
  '*':
    - roles
    - hostname
    - hosts
    - myShadow
    - webconf
  'osfinger:CentOS-5':
    - match: grain
    - centOS-5
  'osfinger:CentOS-6':
    - match: grain
    - centOS-6
