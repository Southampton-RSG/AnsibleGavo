# Deploy GAVO DaCHS with Ansible

The aim of this Ansible playbook is to provide a reproducible method for
deploying a new instance of a GAVO DaCHS server using a more exotic tablespace
set up.

This playbook assumes that GAVO DaCHS will use two table spaces,

- A "slow" tablespace for mass storage of data
- A "fast" tablespace (e.g. located on an NVMe) for indexes

Ansible will take care of creating the tablespaces in the appropriate locations
and will import and serve the data.

## Requirements

Ansible is required, which can be installed using a python venv like so:

```python3 -m venv dachs-deploy```

```python3 -m pip install ansible```

For more information see [the ansible docs](https://docs.ansible.com/ansible/latest/installation_guide/index.html).

## Steps to deploy

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

A number of variables needs to be set in `vars.yml` to configure the deployment
of GACH DaCHS. The data to be served and its associated meta files, such as
resource descriptor, are expected to be stored on some remote host which
Ansible can access to download onto the machines where GAVO DaCHS is being
deployed to.

The following Ansible command will install, configure and
`gavodachs2-server` and import your data:

```ansible-playbook playbook.yml -i inventory.yml -Kk --ask-become-pass```

If the SSH connection is refused, try to SSH into the server from the computer
you are running the deployment script from.

### Variables required

There are a number of variables located in `vars.yml` which are used to control
the version of GAVO DaCHS, how it is deployed and the data which will be served.

| Variable | Description |
| -------- | ----------- |
| source_name | The name of the data source used as the name in `/var/gavo/inputs`, e.g. arihip |
| rd_url | A URL to download the resource descriptor |
| rd_name | The name to use for the resource descriptor |
| data_url | A URL to download the data to serve |
| data_name | The name of the data file |
| checksum_algorithm | The type of checksum algorithm to use to verify the downloaded data |
| data_checksum | The checksum hash to validate against |
| version | The version of `gavodachs2-server` to install, see `apt search gavodachs2-server` if unsure of the version |
| fast_tb_location | The location on disk where the fast index table should be |
| default_tb_location | The location on disk where the mass storage table should be |
| fast_tb_feedname | A nickname to give to the fast table for use internally in the resource descriptor and userconfig |
| run_tests | A boolean to indicate if resource descriptor regression tests should be run or not |
| authority | A unique identifier for your own services in the VO |
| bind_address | The bind address for PostgreSQL |
| site_name | The name of the site to be served by GAVO DaCHS |


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

