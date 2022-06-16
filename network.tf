module "vpc" {
  source                                 = "terraform-google-modules/network/google//modules/vpc"
  project_id                             = "terraform-ignite"
  network_name                           = "terraform-ignite"
  routing_mode                           = "REGIONAL"
  shared_vpc_host                        = false
  delete_default_internet_gateway_routes = false
}
