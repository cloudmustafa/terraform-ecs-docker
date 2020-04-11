# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "go_log_group" {
  name              = "/ecs/go-app"
  retention_in_days = 30

  tags = {
    Name = "go-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "go_log_stream" {
  name           = "go-log-stream"
  log_group_name = aws_cloudwatch_log_group.go_log_group.name
}

