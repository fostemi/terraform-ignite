module "gke" {

  source = "./modules/terraform-google-gke"

  use_gke    = var.use_gke
  use_anthos = var.use_anthos

  regional           = false
  network_project_id = "terraform-ignite"
  gke_project_id     = "terraform-ignite"
  gke_node_sa        = "terraform-expert@terraform-ignite.iam.gserviceaccount.com"

  cluster_name        = "cluster1"
  network_name        = "terraform-test"
  subnet_name         = "subnet1"
  region              = "us-central1"
  zones               = "us-central1-c"
  pods_range_name     = local.pods_range_name
  services_range_name = local.services_range_name
  master_range        = local.master_range
  machine_type        = var.machine_type

  # failover_cluster_name        = local.failover_cluster_name
  # failover_subnet_name         = local.failover_subnet_name
  failover_region              = local.failover_region
  failover_zones               = local.failover_zones
  failover_pods_range_name     = local.failover_pods_range_name
  failover_services_range_name = local.failover_services_range_name
  failover_master_range        = local.failover_master_range

  config_connector = true

  depends_on = [
    module.vpc,
    module.subnets,
  ]

}
