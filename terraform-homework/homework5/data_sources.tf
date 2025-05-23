// Fetch amazon linux 2023 ami id  

data "aws_ami" "amazon_linux_2023" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.7.*"]
  }

  filter {
    name    = "architecture"
    values  = ["x86_64"]
  }

  filter {
    name    = "virtualization-type"
    values  = ["hvm"]
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket         = "terraform-session-backend-bucket-cuneyt"
    key            = "terraform-homework/homework4/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}


# data "template_file" "user_data" {
#   template = file ("userdata.sh")
#   vars = {
#     environment = var.env
#   }
# }


# data "aws_route53_zone" "existing_zone" {
#   name         = var.domain_name
#   private_zone = false
# }

# data "aws_acm_certificate" "ISSUED" {
#   domain   = var.domain_name
#   statuses = ["ISSUED"]
#   most_recent = true
# }