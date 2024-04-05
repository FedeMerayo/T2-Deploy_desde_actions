
variable "aws_access_key" {}
variable "aws_secret_key" {}

provider "aws" {
    region = "us-east-2" # Cambia esto a la regi¾n deseada
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
    }


    
resource "aws_instance" "Pagos_dev_instance" {
    ami = "ami-0900fe555666598a2" # AMI de Amazon Linux
    instance_type = "t2.micro" # Tipo de instancia
    key_name = "vockey" # Nombre de tu key pair existente en AWS
    
        vpc_security_group_ids = sg-07706ea6df27db7b9
        tags = {
    Name = "ORG-PAGOS-DEV" #Reemplazar por el nombre correcto
    }


    }
  output "instance_ip" {
  value = aws_instance.Pagos_dev_instance.public_ip
}

