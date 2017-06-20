#!/usr/bin/env bash

if [ ! $(rpm -qa|grep ansible) ]; then
    yum install -y wget ansible

    cat <<EOF > /etc/sudoers.d/ansible
ansible ALL=(ALL) NOPASSWD:ALL
Defaults:ansible    !requiretty
EOF


    wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
    rpm -ivh epel-release-7-9.noarch.rpm

    yum makecache
fi
