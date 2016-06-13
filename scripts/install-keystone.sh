#!/usr/bin/env bash

# Script to install minimal packages for keystone through ansible roles

yum -y update
yum -y install epel-release git python-devel wget gcc libffi-devel openssl-devel
yum -y install python-pip ansible chrony centos-release-openstack-mitaka
yum -y install python-openstackclient mariadb mariadb-server python2-PyMySQL rabbitmq-server
yum -y install memcached python-memcached openstack-keystone httpd mod_wsgi
yum -y upgrade

curl -L http://repository.egi.eu/sw/production/cas/1/current/repo-files/EGI-trustanchors.repo > \
    /etc/yum.repos.d/EGI-trustanchors.repo

yum -y install ca-policy-egi-core fetch-crl gridsite
fetch-crl -v

#pip install -U pip
#pip install git+https://github.com/openstack-infra/shade.git
#pip install git+https://github.com/ansible/ansible.git


