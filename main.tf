module "eks-jx" {
  source = "jenkins-x/eks-jx/aws"
  vault_user = "Administrator"
  cluster_name = "capires"
  force_destroy = true
  enable_spot_instances = true
  enable_worker_groups_launch_template = true
  volume_size = 10
  allowed_spot_instance_types          = ["m5.large", "m5a.large", "m5d.large", "m5ad.large", "t3.large", "t3a.large"]
  lt_desired_nodes_per_subnet          = 1
  lt_min_nodes_per_subnet              = 1
  lt_max_nodes_per_subnet              = 1
}

output "jx_requirements" {
  value = module.eks-jx.jx_requirements
}