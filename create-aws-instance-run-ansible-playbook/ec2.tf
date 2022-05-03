data "aws_ami" "ubuntu" {
    most_recent = true
    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
    owners = ["099720109477"]
}

resource "aws_instance" "server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = ["${var.security_groups}"]

  tags = {
    Name        = var.name
    Environment = var.environment
    Provisioner = "Terraform"
    Repo        = var.repo
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "ubuntu"
      private_key = "${file(var.private_key)}"
      host     = aws_instance.server.public_ip
    }
    inline = ["echo 'Conected!'"]
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook ./ansible-playbook/run-playbook.yml -i '${aws_instance.server.public_ip},' -u ubuntu"
  }

}



