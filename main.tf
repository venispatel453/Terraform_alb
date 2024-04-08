# Load Balancer
resource "aws_lb" "load_balancer" {
  name = "${var.env}-lb"
  internal = false
  load_balancer_type = "application"
  security_groups = var.lb_security_groups
  subnets = var.subnet_ids
  tags = {
    Environment = "${var.env}"
  }
}

# Target_group
resource "aws_lb_target_group" "Target_group" {
  name = "${var.env}-ecs-tg"
  port = 80
  protocol = "HTTP"
  vpc_id = var.vpc_id
  # health check
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_lb.load_balancer.arn
  port = 80
  protocol = "HTTP"
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.Target_group.arn
  }
}