# -----------------------------------------------
# CloudWatch LogGroup for ECS
# -----------------------------------------------
resource "aws_cloudwatch_log_group" "ecs_cluster" {
  name              = "/digital/${var.environment}/ecs/${var.project_name}"
  retention_in_days = var.logs_retention_period_in_days
  tags              = var.tags
}
# -----------------------------------------------
# ECS Cluster LogGroup for ECS
# -----------------------------------------------
module "ecs_cluster" {
  source  = "terraform-aws-modules/ecs/aws"
  version = "~> 4.1.0"

  cluster_name = "${var.project_name}-ecs-cluster"

  cluster_configuration = {
    execute_command_configuration = {
      logging = "OVERRIDE"
      log_configuration = {
        cloud_watch_log_group_name = aws_cloudwatch_log_group.ecs_cluster.name
      }
    }
  }
  tags = var.tags
}
