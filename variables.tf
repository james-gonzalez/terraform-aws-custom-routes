variable "routes" {
  description = "Additional routes to be added to the default route table"
  type = map(object({
    route_table_ids            = list(string)
    destination_cidr_block     = optional(string)
    destination_prefix_list_id = optional(string)
    egress_only_gateway_id     = optional(string)
    gateway_id                 = optional(string)
    nat_gateway_id             = optional(string)
    network_interface_id       = optional(string)
    transit_gateway_id         = optional(string)
    vpc_endpoint_id            = optional(string)
    vpc_peering_connection_id  = optional(string)
  }))
  default = {}
}
