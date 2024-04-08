output "lb_arn" {
  value = aws_lb.load_balancer.arn
}

output "tg_arn" {
  value = aws_lb_target_group.Target_group.arn
}

output "lb_id" {
  value = aws_lb.load_balancer.id
}