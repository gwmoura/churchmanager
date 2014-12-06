churchmanager
=============

App to manage your Church´s Members

[![Coverage Status](https://img.shields.io/coveralls/gwmoura/churchmanager.svg)](https://coveralls.io/r/gwmoura/churchmanager)
[![Build Status](https://travis-ci.org/gwmoura/churchmanager.svg?branch=master)](https://travis-ci.org/gwmoura/churchmanager)

Serving assets
==============

RAILS_ENV=production bundle exec rake assets:precompile


Run puma Server
===============

bundle exec puma -C config/puma.rb

Puma as a service
=================

Read this [tools/jungle](https://github.com/puma/puma/tree/master/tools/jungle/) for configure init.d or upstart 




