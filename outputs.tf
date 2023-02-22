# -----------------------------------------------
# Outputs for ECS
# -----------------------------------------------
output "ecs_cluster_name" {
  value       = module.ecs_cluster.cluster_name
  description = "The name of the ECS cluster"
}

output "ecs_cluster_id" {
  value       = module.ecs_cluster.cluster_id
  description = "The ID that identifies the cluster"
}
