# Create AWS instance and run playbook Ansible

- Instance type: t2.micro
- Region: us-east-1
- Instance name: server001
- AMI: ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server
- Security Group: only_ssh
- Define path an private_key localy

## Verify you plan

```sh
terraform plan -var="private_key=/root/.ssh/id_rsa"
```

## Create instance according your plan and run ansible-playbook

```sh
terraform apply -var="private_key=/root/.ssh/id_rsa"
```
## Destroy instance that was created

```sh
terraform destroy -var="private_key=/root/.ssh/id_rsa"
```