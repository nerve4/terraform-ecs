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

  default_capacity_provider_use_fargate = false

  fargate_capacity_providers = {
    FARGATE      = {}
    FARGATE_SPOT = {}
  }

  autoscaling_capacity_providers = {
    acp-test = {
      auto_scaling_group_arn         = var.acp_test_ag_arn
      managed_termination_protection = var.acp_test_termination_protection

      managed_scaling = {
        maximum_scaling_step_size = var.acp_test_maximum_scaling
        minimum_scaling_step_size = var.acp_test_minimum_scaling
        status                    = "ENABLED"
        target_capacity           = var.acp_test_target_capacity
      }

      default_capacity_provider_strategy = {
        weight = var.acp_test_dcps_weight
        base   = var.acp_test_dcps_base
      }
    }
  }

  tags = var.tags
}
