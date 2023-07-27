# resource "aws_lb" "loadBalancer" {
#   name               = "test-load-balancer"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.securitygroup.id]
#   subnets            = ["${aws_subnet.public_subnet1.id}", "${aws_subnet.public_subnet2.id}"]

#   enable_deletion_protection = false

#   tags = {
#     Environment = "production"
#   }
# }

# resource "aws_lb_target_group" "LBTargetGroup" {
#   name        = "Application-target-group"
#   target_type = "instance"
#   port        = 80
#   protocol    = "HTTP"
#   vpc_id      = aws_vpc.local_vpc.id
# }

# resource "aws_lb_listener" "LBListener1" {
#   load_balancer_arn = aws_lb.loadBalancer.arn
#   port              = "80"
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.LBTargetGroup.arn
#   }
# }

# resource "aws_lb_listener" "LBListener2" {
#   load_balancer_arn = aws_lb.loadBalancer.arn
#   port              = "443"
#   protocol          = "HTTPS"
#   certificate_arn   = "arn:aws:acm:eu-west-1:622658514249:certificate/ca534fd3-96a8-494a-b182-6b71bad9696f"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.LBTargetGroup.id
#   }
# }