resource "aws_instance" "myec2" {
  ami           = "ami-0271d331ac7dab654"
  instance_type = lookup(var.instance_type,terraform.workspace)
}

variable "instance_type" {
  type = "map"

    default = {
    default = "t2.nano"
    dev = "t2.micro"
  }
}
