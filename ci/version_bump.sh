#!/bin/sh

set -evx

export LANG=en_US.UTF-8

. ci/bundle_install.sh

bundle exec rake version:bump
bundle exec rake changelog

git checkout .bundle/config
