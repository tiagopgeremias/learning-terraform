# Create a simple AWS instance

- Instance type: t2.micro
- Region: us-east-1
- Instance name: server001
- AMI: ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server

## Verify you plan

```sh
terraform plan
```

## Apply and create instance according your plan

```sh
terraform apply
```
## Destroy instance that was created

```sh
terraform destroy
```

