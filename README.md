# Deploy GAVO DaCHS with Ansible

The aim of this repository is to provide a reproducible deployment of a GAVO
DaCHS server. This deployment is done with Ansible, and assumes that data will
be stored on a dedicated hard disk whilst the index will be stored on a fast
NVME drive.

### Requirements

Ansible is required, which can be installed using a python venv like so:

```python3 -m venv dachs-deploy```

```python3 -m pip install ansible```

For more information see [the ansible docs](https://docs.ansible.com/ansible/latest/installation_guide/index.html).

### Steps to deploy

Firstly, we need a debian 11.x server with SSH and root permissions. Download
Debian from [here](https://www.debian.org/download) and check out the
installation guide if required.

Next, we need to clone this repository (install Git if required), then create a
branch to store local config changes.

```git checkout -b my-branch```

Get the IP address for the debian server, and edit the inventory file
`inventory.yml` changing the IP address under hosts. Also change the
`admin_user` field to the username that used to SSH into the system. This user
will be added to the list of sudoers on the server.

The following Ansible command will then install, configure and
`gavodachs2-server` and import test data:

```ansible-playbook playbook.yml -i inventory.yml -Kk --ask-become-pass```

If the SSH connection is refused, try to SSH into the server from the computer
you are running the deployment script from.

## Development

- The inventory file defines the hosts and admin users that the server is to be
  deployed to.
- The vars file defines variables to be used in the ansible deployment, such as
  the version of GAVO DaCHS to use and info about data to import.
- The playbook is the entrypoint to the deployment, it contains paths to the
  inventory vars and defines the roles to be run
- roles
    -  configure-db:
       -  tasks/main: Creates the "exotic" database/tablespace structure
    - install-gavo
        - tasks/main: Adds the apt-key, installs, and configures gavodachs2-server
        - templates/gavo.rc.j2: This is a templating file that becomes the
          gavo.rc file its the place to go to configure the gavodachs server
    - load-data
        - tasks/main: Downloads the resource descriptor and data file then
          imports using dachs imp
    - restart-and-serve
        - templates/gavo-service: A template for the service to be initiated by
          systemd
        - tasks/main: Stops the gavo service from the apt install and then
          launches gavo as a system service

