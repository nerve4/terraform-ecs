# Terraform-ECS

## Summary

Terraform code to create an ECS Cluster.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.70.0 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 1.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.70.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs_cluster"></a> [ecs\_cluster](#module\_ecs\_cluster) | terraform-aws-modules/ecs/aws | ~> 4.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.ecs_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acp_test_ag_arn"></a> [acp\_test\_ag\_arn](#input\_acp\_test\_ag\_arn) | The 1st autoscaling group arn. | `string` | n/a | yes |
| <a name="input_acp_test_dcps_base"></a> [acp\_test\_dcps\_base](#input\_acp\_test\_dcps\_base) | The 1st autoscaling group default capacity provider strategy base value. | `number` | `20` | no |
| <a name="input_acp_test_dcps_weight"></a> [acp\_test\_dcps\_weight](#input\_acp\_test\_dcps\_weight) | The 1st autoscaling group default capacity provider strategy weight value. | `number` | `60` | no |
| <a name="input_acp_test_maximum_scaling"></a> [acp\_test\_maximum\_scaling](#input\_acp\_test\_maximum\_scaling) | The 1st autoscaling group maximum scaling value. | `number` | `5` | no |
| <a name="input_acp_test_minimum_scaling"></a> [acp\_test\_minimum\_scaling](#input\_acp\_test\_minimum\_scaling) | The 1st autoscaling group minimum scaling value. | `number` | `1` | no |
| <a name="input_acp_test_target_capacity"></a> [acp\_test\_target\_capacity](#input\_acp\_test\_target\_capacity) | The 1st autoscaling group target capacity value. | `number` | `60` | no |
| <a name="input_acp_test_termination_protection"></a> [acp\_test\_termination\_protection](#input\_acp\_test\_termination\_protection) | The 1st autoscaling group termination protection. | `string` | `"DISABLED"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the environment that is created. | `string` | n/a | yes |
| <a name="input_logs_retention_period_in_days"></a> [logs\_retention\_period\_in\_days](#input\_logs\_retention\_period\_in\_days) | The number of days CloudWatch logs are retained. | `number` | `30` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The Project Name. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags assigned to the created resources. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_cluster_id"></a> [ecs\_cluster\_id](#output\_ecs\_cluster\_id) | The ID that identifies the cluster |
| <a name="output_ecs_cluster_name"></a> [ecs\_cluster\_name](#output\_ecs\_cluster\_name) | The name of the ECS cluster |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
