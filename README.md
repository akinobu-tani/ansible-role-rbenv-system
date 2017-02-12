Ansible Role rbenv system-wide
=========

[![Build Status](https://travis-ci.org/akinobu-tani/ansible-role-rbenv-system.svg?branch=master)](https://travis-ci.org/akinobu-tani/ansible-role-rbenv-system)

Installs rbenv.

Requirements
------------

none

Role Variables
--------------

``` yaml
rbenv_version: HEAD

rbenv_plugins:
  - name: ruby-build
    repo_url: https://github.com/rbenv/ruby-build.git
    version: HEAD

ruby_versions: 
  - 2.4.0

ruby_gems:
  - bundler

ruby_global_version: 2.4.0

rbenv_install_path: /usr/local/rbenv
```

Dependencies
------------

none

Example Playbook
----------------

``` yaml
- hosts: servers
  vars:
    ruby_versions:
      - 2.4.0
    ruby_global_version: 2.4.0
  roles:
     - rbenv
```

License
-------

MIT

Author Information
------------------

[Akinobu Tani](http://github.com/akinobu-tani)
