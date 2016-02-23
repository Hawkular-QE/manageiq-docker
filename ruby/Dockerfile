FROM centos:centos7 

RUN yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel 
RUN yum -y install libyaml-devel libffi-devel openssl-devel make 
RUN yum -y install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel
RUN yum -y install wget which

ENV PATH $PATH:/usr/local/rvm/bin/
ADD installRuby.sh /opt/ruby-tools/installRuby.sh
RUN chmod 755 /opt/ruby-tools/installRuby.sh
RUN /bin/bash -c "/opt/ruby-tools/installRuby.sh"

