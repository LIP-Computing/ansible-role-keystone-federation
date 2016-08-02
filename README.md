Role Name
=========

Role to deploy and configure keystone

Requirements
------------

Before running this role, it's needed to configure ntp, mysql, memcached
Done with ansible roles:

* geerlingguy.ntp
* geerlingguy.memcached
* geerlingguy.mysql

Role Variables
--------------

RabbitMQ related variables:

* rabbit_user: rabbitmq user
* rabbit_pass: rabbitmq password


Dependencies
------------

No dependencies.

Example Playbook
----------------

Example playbook

    - hosts: localhost
      roles:
         - { role: LIP-Computing.keystone-federation }

License
-------

Apache

Author Information
------------------

Mario David: mariojmdavid@gmail.com