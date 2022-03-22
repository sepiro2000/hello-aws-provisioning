module "eks" {
  source = "../modules/eks"

  name       = "krosslab_dev"
  subnet_ids = ["subnet-0750eca19fd5285a3", "subnet-0ecc2e5a79fa6930c", "subnet-0537372f9e3f2f9a8"]
  vpc_cidr   = "10.1.0.0/16"
  vpc_id     = "vpc-02797c4188db84104"
}