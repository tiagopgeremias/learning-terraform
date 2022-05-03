variable "region" {
  description = "Define what region the instance will be deployment"
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the application"
  default     = "server001"
}

variable "key_name" {
    description = "Name of ssh key pair to access ssh in instance"
    default = "chave_ed25519"
}

variable "environment" {
  description = "Environment of the application"
  default     = "hml"
}

variable "instance_type" {
  description = "Define type of the AWS instance for hardware configuration of machine"
  default     = "t2.micro"
}

variable "repo" {
  description = "Repository of the application"
  default     = "https://github.com/tiagopgeremias/learning-terraform"
}

variable "security_groups" {
  description = "Security group defined on application"
  default = "only_ssh"
}

variable "private_key" {
  description = "Path of location ssh-key pair"
  type = string
}