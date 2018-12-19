module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "1.12.0"

  name                   = "webserver"
  instance_count         = 1

  ami                    = "ami-009d6802948d06e52"
  instance_type          = "t2.micro"
  key_name               = "terraform"
  monitoring             = true
  vpc_security_group_ids = ["sg-f3d17885"]
  subnet_id              = "subnet-a8d0dccc"

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
