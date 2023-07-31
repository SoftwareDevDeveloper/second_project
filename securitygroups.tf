module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.0.0"
}

name        = "resource-security-group"
description = "This security group allow inbound and outbound traffic"
vpc_id = "vpc-0de121ec0ecf8eeb6"

ingress_rules = ["https-443-tcp"]
from_port     = 80
to_port       = 80
protocol      = "tcp"
cidr_blocks   = ["0.0.0.0/0"]

egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

sg_tags = {
  Name = "terraform-security-group"
}

