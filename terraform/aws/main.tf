module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.0"

  cluster_name    = "devops-cluster-${var.env}"
  cluster_version = "1.28"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    default = {
      min_size     = 1
      max_size     = 3
      desired_size = 2
      instance_types = ["t3.medium"]
    }
  }
}
# 2023-11-02 - feat: Implement Azure pipeline
# 2023-11-07 - fix: Patch security vulnerability
# 2023-11-08 - docs: Add architecture diagram
# 2023-11-09 - docs: Update README
# 2023-11-09 - chore: Refactor manifests
# 2023-11-16 - fix: Resolve networking issue
# 2023-11-17 - feat: Add EKS autoscaling
# 2023-11-20 - chore: Upgrade Terraform
# 2023-11-20 - docs: Add architecture diagram
# 2023-11-20 - docs: Add architecture diagram
# 2023-11-23 - fix: Fix deployment bug
# 2023-11-24 - chore: Optimize CI/CD
# 2023-11-27 - chore: Optimize CI/CD
# 2023-11-27 - feat: Create monitoring dashboard
# 2023-11-27 - docs: Add architecture diagram
# 2023-11-28 - chore: Upgrade Terraform
# 2023-12-07 - docs: Update README
# 2023-12-08 - docs: Improve runbook
# 2023-12-12 - fix: Patch security vulnerability
# 2023-12-12 - fix: Fix deployment bug
# 2023-12-14 - fix: Resolve networking issue
# 2023-12-14 - chore: Optimize CI/CD
# 2023-12-15 - docs: Improve runbook
# 2023-12-18 - feat: Implement Azure pipeline
