module "network_routes" {
  source = "../"

  routes = {
    TEST = {
      route_table_ids        = ["rtb-000000"]
      destination_cidr_block = "10.10.0.0/16"
      gateway_id             = "vpw-1234567890"
    }
    PROD = {
      route_table_ids        = ["rtb-001", "rtb-0002"]
      destination_cidr_block = "10.10.0.0/16"
      gateway_id             = "vgw-0000000"
    }
  }
}
