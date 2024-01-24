# Network Routes Module

This Terraform module provides you with the ability to create
custom route rules for your route-tables in your VPC.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0, < 1.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.67.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route.extra_routes](https://registry.terraform.io/providers/hashicorp/aws/4.67.0/docs/resources/route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_routes"></a> [routes](#input\_routes) | Additional routes to be added to the default route table | <pre>map(object({<br>    route_table_ids            = list(string)<br>    destination_cidr_block     = optional(string)<br>    destination_prefix_list_id = optional(string)<br>    egress_only_gateway_id     = optional(string)<br>    gateway_id                 = optional(string)<br>    nat_gateway_id             = optional(string)<br>    network_interface_id       = optional(string)<br>    transit_gateway_id         = optional(string)<br>    vpc_endpoint_id            = optional(string)<br>    vpc_peering_connection_id  = optional(string)<br>  }))</pre> | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
