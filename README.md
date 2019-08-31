# AnsibleSample

## Environment
- macOS Mojave
- Ansible 2.8.4

## Docker

### Build
```
$ cd /path/to/AnsibleSample
$ docker build -t centos_ansible .
```

### Run
```
$ docker run --privileged -d -p 22:22 --name centos_ansible centos_ansible
$ ssh root@localhost
```

## sshpass

### Install
```
$ brew create https://sourceforge.net/projects/sshpass/files/sshpass/1.06/sshpass-1.06.tar.gz --force
$ brew install sshpass
```

### Check
```
$ cd /path/to/AnsibleSample
$ ansible default -i staging -u root --ask-pass -m ping
```

## Execution
```
$ rm ~/.ssh/known_hosts
$ cd /path/to/AnsibleSample
$ ansible-playbook -i staging site.yml -u root --ask-pass
```

## Reference
- https://docs.ansible.com/
- https://github.com/ansible/ansible
