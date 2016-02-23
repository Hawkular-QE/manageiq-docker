FROM centos:centos7 

ENV RUBY_VERSION 2.2.4

ENV PATH /usr/local/rvm/gems/ruby-${RUBY_VERSION}/bin:/usr/local/rvm/gems/ruby-${RUBY_VERSION}@global/bin:/usr/local/rvm/rubies/ruby-${RUBY_VERSION}/bin:/usr/local/rvm/bin:$PATH
ENV GEM_PATH /usr/local/rvm/gems/ruby-${RUBY_VERSION}:/usr/local/rvm/gems/ruby-${RUBY_VERSION}@global
ENV GEM_HOME /usr/local/rvm/gems/ruby-${RUBY_VERSION}

RUN yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel 
RUN yum -y install libyaml-devel libffi-devel openssl-devel make 
RUN yum -y install bzip2 autoconf automake libtool bison iconv-devel sqlite-devel
RUN yum -y install wget which

ADD installRuby.sh /opt/ruby-tools/installRuby.sh
RUN chmod 755 /opt/ruby-tools/installRuby.sh
RUN /bin/bash -c "/opt/ruby-tools/installRuby.sh"


