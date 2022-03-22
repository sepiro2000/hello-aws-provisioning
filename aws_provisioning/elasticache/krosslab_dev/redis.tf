module "redis" {
  source = "../module"

  elasticache_subnet_group_name = "apne2-krosslab-dev-elasticache-subnet-group"
  engine_version = "6.x"
  name = "service-dev"
  node_type = "cache.t3.small"
  number_cache_clusters = "2"
  port = "6379"
  vpc_cidr = "10.1.0.0/16"
  vpc_id = "vpc-02797c4188db84104"
}