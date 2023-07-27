# resource "aws_subnet" "public_subnet1" {
#   vpc_id            = aws_vpc.local_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "eu-west-1a"

#   tags = {
#     Name = "DefaultSubnet1"
#   }
# }

# resource "aws_subnet" "public_subnet2" {
#   vpc_id            = aws_vpc.local_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "eu-west-1b"

#   tags = {
#     Name = "DefaultSubnet2"
#   }
# }

# resource "aws_vpc" "local_vpc" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "DefaultVPC"
#   }
# }

# resource "aws_internet_gateway" "public_internet_gateway" {
#   vpc_id = aws_vpc.local_vpc.id

#   tags = {
#     Name = "PublicIGW"
#   }
# }

# resource "aws_route_table" "public_route_table" {
#   vpc_id = aws_vpc.local_vpc.id

#   tags = {
#     Name = "Route_Table"
#   }
# }

# resource "aws_route_table_association" "public_RTA1" {
#   subnet_id      = aws_subnet.public_subnet1.id
#   route_table_id = aws_route_table.public_route_table.id
# }

# resource "aws_route_table_association" "public_RTA2" {
#   subnet_id      = aws_subnet.public_subnet2.id
#   route_table_id = aws_route_table.public_route_table.id
# }

# resource "aws_route" "public_route" {
#   route_table_id         = aws_route_table.public_route_table.id
#   gateway_id             = aws_internet_gateway.public_internet_gateway.id
#   destination_cidr_block = "0.0.0.0/0"
# }

# resource "aws_eip" "public_elastic_ip" {
#   vpc                       = true
#   associate_with_private_ip = "10.0.0.10"

#   tags = {
#     name = "Default_EIP"
#   }
# }



# #########private network#########
# resource "aws_subnet" "private_subnet1" {
#   vpc_id            = aws_vpc.local_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "eu-west-1a"

#   tags = {
#     Name = "DefaultSubnet1"
#   }
# }

# resource "aws_subnet" "private_subnet2" {
#   vpc_id            = aws_vpc.local_vpc.id
#   cidr_block        = "10.0.1.0/24"
#   availability_zone = "eu-west-1b"

#   tags = {
#     Name = "DefaultSubnet2"
#   }
# }

# resource "aws_route_table" "private_route_table" {
#   vpc_id = aws_vpc.local_vpc.id

#   tags = {
#     Name = "Route_Table"
#   }
# }

# resource "aws_route_table_association" "private_RTA1" {
#   subnet_id      = aws_subnet.private_subnet1.id
#   route_table_id = aws_route_table.private_route_table.id
# }

# resource "aws_route_table_association" "private_RTA2" {
#   subnet_id      = aws_subnet.private_subnet2.id
#   route_table_id = aws_route_table.private_route_table.id
# }

# resource "aws_route" "private_route" {
#   route_table_id         = aws_route_table.private_route_table.id
#   nat_gateway_id         = aws_nat_gateway.private_nat_gateway.id
#   destination_cidr_block = "0.0.0.0/0"
# }

# resource "aws_nat_gateway" "private_nat_gateway" {
#   allocation_id = aws_eip.public_elastic_ip.id
#   subnet_id     = aws_subnet.private_subnet1.id

#   tags = {
#     Name = "Private Gateway"
#   }
# }
