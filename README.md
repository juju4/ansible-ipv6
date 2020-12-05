[![Build Status - Master](https://travis-ci.org/juju4/ansible-ipv6.svg?branch=master)](https://travis-ci.org/juju4/ansible-ipv6)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-ipv6.svg?branch=devel)](https://travis-ci.org/juju4/ansible-ipv6/branches)

[![Actions Status - Master](https://github.com/juju4/ansible-ipv6/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-ipv6/actions?query=branch%3Amaster)
[![Actions Status - Devel](https://github.com/juju4/ansible-ipv6/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-ipv6/actions?query=branch%3Adevel)

[![Appveyor - Master](https://ci.appveyor.com/api/projects/status/y66h05noirqpdc6a/branch/master?svg=true)](https://ci.appveyor.com/project/juju4/ansible-ipv6/branch/master)
[![Appveyor - Devel](https://ci.appveyor.com/api/projects/status/y66h05noirqpdc6a/branch/devel?svg=true)](https://ci.appveyor.com/project/juju4/ansible-ipv6/branch/devel)

# IPv6 ansible role

A simple ansible role to either harden, either disable ipv6 in linux and Windows systems.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0
 * 2.2
 * 2.6
 * 2.7
 * 2.8
 * 2.10

### Operating systems

Tested with Travis (Ubuntu LTS, Centos...) and Appveyor (Win)

## Example Playbook

Just include this role in your list.
For example

```
- hosts: all
  roles:
    - juju4.ipv6
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/juju4.ipv6
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/juju4.ipv6/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

## References

* https://linux-audit.com/linux-security-guide-for-hardening-ipv6/
* https://www.ernw.de/download/ERNW_Guide_to_Configure_Securely_Windows_Servers_For_IPv6_v1_0.pdf

## License

BSD 2-clause
