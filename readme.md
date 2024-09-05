

docker run -v ~/.ssh/id_rsa:/root/.ssh/id_rsa -v $(pwd):/ansible -e SSH_AUTH_SOCK=/ssh-agent -v $SSH_AUTH_SOCK:/ssh-agent ansible:latest ansible-playbook -i /ansible/inventories/production.yaml /ansible/playbooks/master.yaml

## Docker
To build the docker image used to run ansible do 
```shell
docker build -t ansible:latest .
```

to run it do

```shell
docker run -v ~/.ssh/id_rsa:/root/.ssh/id_rsa -v $(pwd):/ansible -e SSH_AUTH_SOCK=/ssh-agent -v $SSH_AUTH_SOCK:/ssh-agent ansible:latest ansible-playbook -i /ansible/inventories/production.yaml /ansible/playbooks/master.yaml
```

