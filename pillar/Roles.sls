Roles:
  {% if grains['id'] == "10.70.63.131-logstash" %}
    - rsyslog
  {% endif %}
  
  {% if grains['id'] == "10.70.32.105" %}
    - common-base
    - adminServer
  {% endif %}

  {% if grains['id'] == "10.70.63.131-logstash" %}
    - common-base
    - adminServer-centralControl
    - adminServer-svnServer-cluster63.228
    - adminServer-jenkinsServer
    - common-beaver-shipper
  {% endif %}