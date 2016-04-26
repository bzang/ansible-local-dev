Local Development
=================
This role setups up local development environment that runs services and the majority of the environment in docker containers and docker machine.
I created this because I found that bootstrapping a mac was always a pain in the ass and completely inconsistent.

Much of the idea and code was borrowed from the awesome IFTTT team's dash project: https://github.com/IFTTT/dash

Requirements
------------
We assume that you're running a Mac with XCode installed.
This has been tested on OSX 10.11.4 with XCode 7.3

Role Variables
--------------

dev_env_dir
nfs_shares
resolver_tld

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

See LICENSE.md

Author Information
------------------

Bernie Zang - http://berniezang.com
