resource "aws_security_group" "securitygroup" {
  name        = "resource_security_group"
  description = "Allow inbound and outbound traffic"
  vpc_id      = aws_vpc.local_vpc.id
  # vpc_id      = "vpc-0de121ec0ecf8eeb6"
  # vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform-security-group"
  }
}