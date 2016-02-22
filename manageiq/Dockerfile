FROM middleware/postgres

USER root

ENV HOME=/home
ENV MANAGEIQ_HOME=${HOME}/manageiq
ENV TOOL_HOME=/opt/middleware_tools

#RUN sudo rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN sudo yum -y install dnf

RUN sudo dnf -y install git-all                            # Git and components
RUN sudo dnf -y install memcached                          # Memcached for the session store
RUN sudo dnf -y install postgresql-devel postgresql-server # PostgreSQL Database server and to build 'pg' Gem
RUN sudo dnf -y install bzip2 libffi-devel readline-devel  # For rbenv install 2.2.0 (might not be needed with other Ruby setups)
RUN sudo dnf -y install libxml2-devel libxslt-devel patch  # For Nokogiri Gem
RUN sudo dnf -y install gcc-c++                            # For event-machine Gem
RUN sudo dnf -y install nodejs                             # For ExecJS Gem used by sprockets/es6 Gem
RUN sudo dnf -y install openssl-devel                      # For rubygems

# Note: postgresd and memcached are started by supervisord
# Thus, when postgres is started, memcache will also.

ADD memcache.sh ${TOOL_HOME}/memcache.sh
RUN /bin/bash -c "${TOOL_HOME}/memcache.sh"

ADD miqPostgres.sh ${TOOL_HOME}/miqPostgres.sh
RUN chmod 755 ${TOOL_HOME}/miqPostgres.sh
#RUN /bin/bash -c "${TOOL_HOME}/miqPostgres.sh"

RUN cd ~ \
 && git clone https://github.com/ManageIQ/manageiq

WORKDIR ${TOOL_HOME}

ADD startManageIQ.sh ${TOOL_HOME}/startManageIQ.sh
RUN chmod 755 ${TOOL_HOME}/startManageIQ.sh

CMD ["/bin/bash", "-c", "${TOOL_HOME}/startManageIQ.sh"]
