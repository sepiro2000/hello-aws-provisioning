resource "aws_elasticache_subnet_group" "this" {
  name       = "${replace(var.vpc_name,"_","-")}-elasticache-subnet-group"
  subnet_ids = aws_subnet.private_db[*].id
}