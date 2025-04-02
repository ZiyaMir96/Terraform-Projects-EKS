#AWS EC2 Security Group Terraform Module
#Security group for public Bastion Host
module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"

  name        = "${local.name}-public-bastion-sg"
  description = "Security group for SSH Port open for everybody (IPv4), egress ports are all world open"
  vpc_id      = module.vpc.vpc_id


#Ingress rules and CIDR Blocks
  ingress_rules      = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

#Egress ules --all all open
   egress_rules = ["all-all"]
   tags = local.common_tags
}