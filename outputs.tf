# -----------------------------------------------
# Outputs for ECS
# -----------------------------------------------
output "ecs_cluster_name" {
  value       = module.ecs_cluster.cluster_name
  description = "The name of the ECS cluster"
}
