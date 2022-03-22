module "vpc" {
  source = "../module"

  availability_zones = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c"]
  cidr_block         = "10.1.0.0/16"
  vpc_name           = "apne2_krosslab_dev"
  cluster_name = "krosslab_dev"
}