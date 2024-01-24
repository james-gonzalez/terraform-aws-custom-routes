resource "aws_route" "extra_routes" {
  for_each = merge([
    for key, values in var.routes :
    {
      for rt_id in values.route_table_ids :
      "${key}-${rt_id}" => {
        key                        = key
        route_table_id             = rt_id
        destination_cidr_block     = values.destination_cidr_block
        destination_prefix_list_id = values.destination_prefix_list_id
        egress_only_gateway_id     = values.egress_only_gateway_id
        gateway_id                 = values.gateway_id
        nat_gateway_id             = values.nat_gateway_id
        network_interface_id       = values.network_interface_id
        transit_gateway_id         = values.transit_gateway_id
        vpc_endpoint_id            = values.vpc_endpoint_id
        vpc_peering_connection_id  = values.vpc_peering_connection_id
      }
    }
  ]...)

  route_table_id             = each.value.route_table_id
  destination_cidr_block     = each.value.destination_cidr_block
  destination_prefix_list_id = each.value.destination_prefix_list_id
  egress_only_gateway_id     = each.value.egress_only_gateway_id
  gateway_id                 = each.value.gateway_id
  nat_gateway_id             = each.value.nat_gateway_id
  network_interface_id       = each.value.network_interface_id
  transit_gateway_id         = each.value.transit_gateway_id
  vpc_endpoint_id            = each.value.vpc_endpoint_id
  vpc_peering_connection_id  = each.value.vpc_peering_connection_id
}
