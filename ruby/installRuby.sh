#!/bin/bash 
#
# Copyright 2016 Red Hat, Inc. and/or its affiliates
# and other contributors as indicated by the @author tags.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

export RUBY_VERSION=2.2.4
echo "Ruby Version: $RUBY_VERSION"

curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -L get.rvm.io | bash -s stable
/etc/profile.d/rvm.sh
/usr/local/rvm/bin/rvm reload
/usr/local/rvm/bin/rvm requirements run

echo "Installing Ruby version ${RUBY_VERSION}..."
rvm install ruby-${RUBY_VERSION} --autolibs=read-only
/bin/bash --login -c "rvm use ${RUBY_VERSION} --default"


