


module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "1.12.0"

  name                   = "Application-Server"
  instance_count         = 1

  ami                    = "ami-0d677dc122bc2b5e3"
  instance_type          = "t2.micro"
  key_name               = "terraform"
  monitoring             = true
  associate_public_ip_address = true
  vpc_security_group_ids = ["sg-f3d17885"]
  subnet_id              = "subnet-a8d0dccc"
  user_data = "${data.template_file.user_data_server.rendered}"

 

  tags = {
    Terraform = "true"
    Environment = "PROD"
    Application = "Hello-World"
  }
}

  data "template_file" "user_data_server" {
  template = "${file("${path.module}/user-data-server.sh")}"

}
