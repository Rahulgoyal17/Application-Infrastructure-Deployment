


module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "1.12.0"

  name                   = "Application-Server"
  instance_count         = 1

  ami                    = "ami-0e620df67baa52cfd"
  instance_type          = "t2.micro"
  key_name               = "terraform"
  monitoring             = true
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-f3d17885"]
  subnet_id              = "subnet-a8d0dccc"

 

  tags = {
    Terraform = "true"
    Environment = "PROD"
    Application = "Hello-World"
  }
}
