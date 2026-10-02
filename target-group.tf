resource "aws_lb_target_group" "app" {
  name        = "sanishtest-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "ip"

  vpc_id = aws_vpc.main.id

  health_check {
    enabled  = true
    protocol = "HTTP"
    path     = "/"
    port     = "80"
  }

  tags = {
    Name = "sanishtest-tg"
  }
}