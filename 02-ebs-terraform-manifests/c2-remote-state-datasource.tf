# Terraform remote state data source
/*data "terraform_remote_state" "eks" {
    backend = "local"

    config = {
      path = "../../01-ekscluster-terraform-manifests/terraform.tfstate"
    }
}
*/

data "terraform_remote_state" "eks" {
  backend = "s3"
  config = {
    bucket = "terraform-on-aws-eks-z"
    key    = "dev/eks-cluster/terraform.tfstate"
    region = var.aws_region
  }
}
