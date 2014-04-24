roles:
  {% if grains['id'] == "10.64.12.38" %}
    - adminServer
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.7.0.54" %}
    - adminServer
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.7.0.55" %}
    - adminServer
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.32.100" %}
    - adminServer
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.32.102" %}
    - adminServer
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.32.105" %}
    - adminServer
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.12.37" %}
    - adminServer
    - adminServer-12.37
    - common
    - common-base
    - common-python_2.7
  {% endif %}

  {% if grains['id'] == "10.70.58.48" %}
    - adminServer
    - adminServer-58.48
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.131" %}
    - adminServer
    - adminServer-centralControl
    - adminServer-jenkinsServer
    - adminServer-svnServer
    - adminServer-svnServer-cluster63.228
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "192.168.112.120" %}
    - adminServer
    - adminServer-devJumper
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.32.76" %}
    - adminServer
    - adminServer-DNS
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.32.77" %}
    - adminServer
    - adminServer-DNS
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.130" %}
    - adminServer
    - adminServer-DNS
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.146" %}
    - adminServer
    - adminServer-DNS
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.196" %}
    - adminServer
    - adminServer-ldapServer
    - adminServer-ldapServer-master
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.197" %}
    - adminServer
    - adminServer-ldapServer
    - adminServer-ldapServer-slave
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.12.49" %}
    - adminServer
    - adminServer-jenkinsServer
    - adminServer-ldapServer
    - adminServer-ldapServer-slave
    - adminServer-svnServer
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.58.196" %}
    - adminServer
    - adminServer-jenkinsServer
    - adminServer-svnServer
    - adminServer-svnServer-cluster63.228
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.58.184" %}
    - common
    - common-base
    - docker
  {% endif %}

  {% if grains['id'] == "10.70.58.183" %}
    - common
    - common-base
    - docker
    - docker-registry
  {% endif %}

  {% if grains['id'] == "10.70.36.85" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.86" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.87" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.88" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.89" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.79" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.80" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.81" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.82" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.83" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.84" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.126" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.127" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.133" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.134" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.93" %}
    - common
    - common-base
    - project
    - project-reader
    - project-reader-web
  {% endif %}

  {% if grains['id'] == "10.70.36.112" %}
    - common
    - common-base
    - project
    - project-share
    - project-share-web
  {% endif %}

  {% if grains['id'] == "10.70.36.113" %}
    - common
    - common-base
    - project
    - project-share
    - project-share-web
  {% endif %}

  {% if grains['id'] == "10.70.62.106" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-3g
  {% endif %}

  {% if grains['id'] == "10.70.62.218" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-3g
  {% endif %}

  {% if grains['id'] == "10.70.56.23" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.62.102" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.62.103" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.154" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.155" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.156" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.157" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.158" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
    - project-weibo-cache-session
  {% endif %}

  {% if grains['id'] == "10.70.63.159" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cache
    - project-weibo-cache-session
  {% endif %}

  {% if grains['id'] == "10.70.63.140" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-static
  {% endif %}

  {% if grains['id'] == "10.70.63.141" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-static
  {% endif %}

  {% if grains['id'] == "10.70.36.16" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-static
    - project-weibo-static-spare
  {% endif %}

  {% if grains['id'] == "10.70.36.17" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-static
    - project-weibo-static-spare
  {% endif %}

  {% if grains['id'] == "10.64.0.225" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-html
  {% endif %}

  {% if grains['id'] == "10.64.0.234" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-crontabA
    - project-weibo-html
  {% endif %}

  {% if grains['id'] == "10.64.0.230" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-crontabB
    - project-weibo-html
  {% endif %}

  {% if grains['id'] == "10.70.32.62" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-paike
  {% endif %}

  {% if grains['id'] == "10.64.0.228" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-robot
  {% endif %}

  {% if grains['id'] == "10.70.62.91" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-smsPlatform
  {% endif %}

  {% if grains['id'] == "10.70.62.184" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-sync
  {% endif %}

  {% if grains['id'] == "10.70.62.185" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-sync
  {% endif %}

  {% if grains['id'] == "10.72.2.24" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-vcsCenter
    - project-weibo-web
    - project-weibo-web-stage
  {% endif %}

  {% if grains['id'] == "10.70.56.15" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-videoInterface
  {% endif %}

  {% if grains['id'] == "10.70.56.17" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.70.56.18" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.70.62.100" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.70.62.101" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.70.62.186" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.70.62.187" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.70.62.94" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.70.63.121" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
  {% endif %}

  {% if grains['id'] == "10.72.2.58" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
    - project-weibo-web-admin
  {% endif %}

  {% if grains['id'] == "192.168.165.56" %}
    - common
    - common-base
    - common-beaver
    - common-beaver-shipper
    - project
    - project-weibo
    - project-weibo-web
    - project-weibo-web-admin
  {% endif %}

  {% if grains['id'] == "10.70.62.197" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cdnRepo
  {% endif %}

  {% if grains['id'] == "10.70.62.196" %}
    - common
    - common-base
    - project
    - project-weibo
    - project-weibo-cdnRepo
    - project-weibo-sync
    - project-weibo-sync-qqSohu
  {% endif %}

  {% if grains['id'] == "10.64.1.174" %}
    - common
    - common-base
    - project
    - project-es
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.64.1.175" %}
    - common
    - common-base
    - project
    - project-es
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.64.1.176" %}
    - common
    - common-base
    - project
    - project-es
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.64.1.177" %}
    - common
    - common-base
    - project
    - project-es
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.70.58.190" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-php
    - project
    - project-taihai
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.191" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-php
    - project
    - project-taihai
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.192" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-php
    - project
    - project-taihai
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.193" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-php
    - project
    - project-taihai
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.194" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-php
    - project
    - project-taihai
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.195" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-php
    - project
    - project-taihai
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.56.146" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-lua
  {% endif %}

  {% if grains['id'] == "10.70.58.147" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-php
  {% endif %}

  {% if grains['id'] == "10.70.58.148" %}
    - common
    - common-base
    - common-nginx
    - common-nginx-lua
    - project
    - project-boardcast
    - project-boardcast-lua
  {% endif %}

  {% if grains['id'] == "10.70.59.11" %}
    - common
    - common-base
    - common-jdk
    - common-jdk-tomcat
    - common-memcached
    - common-nginx
    - project
    - project-boardcast
    - project-boardcast-web
  {% endif %}

  {% if grains['id'] == "10.70.59.12" %}
    - common
    - common-base
    - common-jdk
    - common-jdk-tomcat
    - common-memcached
    - common-nginx
    - project
    - project-boardcast
    - project-boardcast-web
  {% endif %}

  {% if grains['id'] == "10.70.59.13" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.14" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.15" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.16" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.17" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.1" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.2" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.3" %}
    - common
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.4" %}
    - common
    - common-base
  {% endif %}

