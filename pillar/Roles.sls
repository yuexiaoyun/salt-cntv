  roles:
  {% if grains['id'] == "10.64.12.38" %}
    - common-base
    - adminServer
  {% endif %}

  {% if grains['id'] == "10.7.0.54" %}
    - common-base
    - adminServer
  {% endif %}

  {% if grains['id'] == "10.7.0.55" %}
    - common-base
    - adminServer
  {% endif %}

  {% if grains['id'] == "10.70.32.100" %}
    - common-base
    - adminServer
  {% endif %}

  {% if grains['id'] == "10.70.32.102" %}
    - common-base
    - adminServer
  {% endif %}

  {% if grains['id'] == "10.70.32.105" %}
    - common-base
    - adminServer
  {% endif %}

  {% if grains['id'] == "10.64.12.37" %}
    - common-base
    - adminServer-12.37
    - common-python_2.7
  {% endif %}

  {% if grains['id'] == "10.70.58.48" %}
    - common-base
    - adminServer-58.48
  {% endif %}

  {% if grains['id'] == "10.70.63.131" %}
    - common-base
    - adminServer-centralControl
    - adminServer-svnServer-cluster63.228
    - adminServer-jenkinsServer
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "192.168.112.120" %}
    - common-base
    - adminServer-devJumper
  {% endif %}

  {% if grains['id'] == "10.70.32.76" %}
    - common-base
    - adminServer-DNS
  {% endif %}

  {% if grains['id'] == "10.70.32.77" %}
    - common-base
    - adminServer-DNS
  {% endif %}

  {% if grains['id'] == "10.70.63.130" %}
    - common-base
    - adminServer-DNS
  {% endif %}

  {% if grains['id'] == "10.70.63.146" %}
    - common-base
    - adminServer-DNS
  {% endif %}

  {% if grains['id'] == "10.70.36.196" %}
    - common-base
    - adminServer-ldapServer-master
  {% endif %}

  {% if grains['id'] == "10.70.36.197" %}
    - common-base
    - adminServer-ldapServer-slave
  {% endif %}

  {% if grains['id'] == "10.64.12.49" %}
    - common-base
    - adminServer-svnServer
    - adminServer-ldapServer-slave
    - adminServer-jen[?1h=[m[m[0m[H[J[1;1Hecho "  roles:"
cat ../data/serversList.csv |grep -v "^#\|^#" |awk -F, '{print $1" "$2}' |while  [3;1Hread ip projs
do[5;9Hecho "  {% if grains['id'] == \"$ip\" %}"[6;9Hecho $projs |sed "s/\;/ /g" |while read -a proj[7;9Hdo[8;17Hfor p in "${proj[@]}"[9;17Hdo[10;25Hecho "    - $p"[11;17Hdone[12;9Hdone[13;9Hecho -e "  {% endif %}\n"
done
[1m~
~
~
~
~
~
~
~
~[14;1H[24;1H[0m[?1l>Vim: Caught deadly signal TERM
Vim: Finished.
[24;1Hse
  {% endif %}

  {% if grains['id'] == "10.70.36.87" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.88" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.36.89" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.79" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.80" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.81" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.82" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.83" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.84" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.126" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.127" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.133" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.63.134" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.62.93" %}
    - common-base
    - project-reader-web
  {% endif %}

  {% if grains['id'] == "10.70.36.112" %}
    - common-base
    - project-share-web
  {% endif %}

  {% if grains['id'] == "10.70.36.113" %}
    - common-base
    - project-share-web
  {% endif %}

  {% if grains['id'] == "10.70.62.106" %}
    - common-base
    - project-weibo-3g
  {% endif %}

  {% if grains['id'] == "10.70.62.218" %}
    - common-base
    - project-weibo-3g
  {% endif %}

  {% if grains['id'] == "10.70.56.23" %}
    - common-base
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.62.102" %}
    - common-base
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.62.103" %}
    - common-base
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.154" %}
    - common-base
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.155" %}
    - common-base
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.156" %}
    - common-base
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.157" %}
    - common-base
    - project-weibo-cache
  {% endif %}

  {% if grains['id'] == "10.70.63.158" %}
    - common-base
    - project-weibo-cache-session
  {% endif %}

  {% if grains['id'] == "10.70.63.159" %}
    - common-base
    - project-weibo-cache-session
  {% endif %}

  {% if grains['id'] == "10.70.63.140" %}
    - common-base
    - project-weibo-static
  {% endif %}

  {% if grains['id'] == "10.70.63.141" %}
    - common-base
    - project-weibo-static
  {% endif %}

  {% if grains['id'] == "10.70.36.16" %}
    - common-base
    - project-weibo-static-spare
  {% endif %}

  {% if grains['id'] == "10.70.36.17" %}
    - common-base
    - project-weibo-static-spare
  {% endif %}

  {% if grains['id'] == "10.64.0.225" %}
    - common-base
    - project-weibo-html
  {% endif %}

  {% if grains['id'] == "10.64.0.234" %}
    - common-base
    - project-weibo-html
    - project-weibo-crontabA
  {% endif %}

  {% if grains['id'] == "10.64.0.230" %}
    - common-base
    - project-weibo-html
    - project-weibo-crontabB
  {% endif %}

  {% if grains['id'] == "10.70.32.62" %}
    - common-base
    - project-weibo-paike
  {% endif %}

  {% if grains['id'] == "10.64.0.228" %}
    - common-base
    - project-weibo-robot
  {% endif %}

  {% if grains['id'] == "10.70.62.91" %}
    - common-base
    - project-weibo-smsPlatform
  {% endif %}

  {% if grains['id'] == "10.70.62.184" %}
    - common-base
    - project-weibo-sync
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.62.185" %}
    - common-base
    - project-weibo-sync
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.72.2.24" %}
    - common-base
    - project-weibo-vcsCenter
    - project-weibo-web-stage
  {% endif %}

  {% if grains['id'] == "10.70.56.15" %}
    - common-base
    - project-weibo-videoInterface
  {% endif %}

  {% if grains['id'] == "10.70.56.17" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.56.18" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.62.100" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.62.101" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.62.186" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.62.187" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.62.94" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.63.121" %}
    - common-base
    - project-weibo-web
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.72.2.58" %}
    - common-base
    - project-weibo-web-admin
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "192.168.165.56" %}
    - common-base
    - project-weibo-web-admin
    - common-beaver-shipper
  {% endif %}

  {% if grains['id'] == "10.70.62.197" %}
    - common-base
    - project-weibo-cdnRepo
  {% endif %}

  {% if grains['id'] == "10.70.62.196" %}
    - common-base
    - project-weibo-cdnRepo
    - project-weibo-sync-qqSohu
  {% endif %}

  {% if grains['id'] == "10.64.1.174" %}
    - common-base
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.64.1.175" %}
    - common-base
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.64.1.176" %}
    - common-base
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.64.1.177" %}
    - common-base
    - project-es-node
  {% endif %}

  {% if grains['id'] == "10.70.58.190" %}
    - common-base
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.191" %}
    - common-base
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.192" %}
    - common-base
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.193" %}
    - common-base
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.194" %}
    - common-base
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.58.195" %}
    - common-base
    - project-taihai-web
  {% endif %}

  {% if grains['id'] == "10.70.56.146" %}
    - common-base
    - common-nginx-lua
  {% endif %}

  {% if grains['id'] == "10.70.58.147" %}
    - common-base
    - common-nginx-php
  {% endif %}

  {% if grains['id'] == "10.70.58.148" %}
    - common-base
    - common-nginx-lua
    - project-boardcast-lua
  {% endif %}

  {% if grains['id'] == "10.70.59.11" %}
    - common-base
    - common-nginx
    - common-jdk-tomcat
    - common-memcached
    - project-boardcast-web
  {% endif %}

  {% if grains['id'] == "10.70.59.12" %}
    - common-base
    - common-nginx
    - common-jdk-tomcat
    - common-memcached
    - project-boardcast-web
  {% endif %}

  {% if grains['id'] == "10.70.59.13" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.14" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.15" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.16" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.70.59.17" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.1" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.2" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.3" %}
    - common-base
  {% endif %}

  {% if grains['id'] == "10.64.0.4" %}
    - common-base
  {% endif %}

