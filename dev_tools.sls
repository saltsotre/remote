develipkg_install:
{%if grains['os'] == 'CentOS'%}
   cmd.run:    
      - name: yum -y groupinstall 'Development Tools'
{%elif grains['os'] == 'Ubuntu'%}
   cmd.run:
      - name: apt-get -y install build-essential
{%endif%}
      - require_in:
        - pkg: wget_install
wget_install:
{%if grains['os'] == 'CentOS'%}
   cmd.run:
      - name: yum -y install wget
{%elif grains['os'] == 'Ubuntu'%}
   cmd.run:
      - name: apt-get -y install wget
{%endif%}
