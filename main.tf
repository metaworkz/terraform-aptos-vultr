module "aptos-fullnode" {
  # download Terraform module from aptos-labs/aptos-core repo
  source        = "github.com/aptos-labs/aptos-core.git//terraform/fullnode/vultr?ref=main"
  fullnode_region = var.fullnode_region
  era           = var.era
  api_key      = var.api_key
  image_tag     = var.image_tag
  helm_values   = var.helm_values
  fullnode_helm_values= var.fullnode_helm_values
  fullnode_helm_values_list = var.fullnode_helm_values_list
  helm_force_update = var.helm_force_update
  k8s_namespace = var.k8s_namespace
  k8s_api_sources = var.k8s_api_sources
  num_fullnodes  = var.num_fullnodes
  chain_id       = var.chain_id
  machine_type   = var.machine_type
}


