# Deploy gavo with Ansible

The aim of this repository is to provide a reproducible deployment of a Gavo/Dachs server. 

### Requirements

The requirement to run this is ansible which can be installed like so:

```python -m pip install --user ansible```

For more information see https://docs.ansible.com/ansible/latest/installation_guide/index.html

### Steps to deploy

Firstly we need a debian 11.x server with SSH and root permissions. 

Get the ip address for the debian server, and edit the inventory file `inventory.yml`
change the ip address under hosts. 

Change the `admin_user` field in the `vars.yml` file to the username
that you will SSH under. This user will be added to the sudoers file on the server.

The following Ansible command will then install and start gavodachs2-server

```ansible-playbook playbook.yml -i inventory.yml -Kk --ask-become-pass```

If the SSH connection is refused: SSH into the server from the computer 
you are running the deployment script from.

## Development

- The inventory file defines the hosts that the server is to be deployed to.
- The vars file defines varibles to be used in the ansible deployment, currently only the `admin_user`
- The  playbook is the entrypoint to the deployment it contains paths to the inventory vars and defines the roles to be run
- roles 
    - install-gavo
        - tasks/main: Adds the apt-key, installs, and configures gavodachs2-server
        - templates/gavo.rc.j2: This is a templating file that becomes the gavo.rc file its the place to go to configure the gavodachs server
    - load-test-data
        - tasks/main: Downloads the resource descriptor and data file then imports using dachs imp
    - restart-and-serve
        - templates/gavo-service: A template for the service to be initiated by systemd
        - tasks/main: Stops the gavo service from the apt install and then launches gavo as a system service

