

docker run -v ~/.ssh/id_rsa:/root/.ssh/id_rsa -v $(pwd):/ansible -e SSH_AUTH_SOCK=/ssh-agent -v $SSH_AUTH_SOCK:/ssh-agent ansible:latest ansible-playbook -i /ansible/inventories/production.yaml /ansible/playbooks/master.yaml

