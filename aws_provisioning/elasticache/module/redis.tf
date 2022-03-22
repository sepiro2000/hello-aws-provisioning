resource "aws_elasticache_parameter_group" "redis" {
  family = "redis6.x"
  name   = "${var.name}-redis-parameter-group"

  parameter {
    name  = "rename-commands"
    value = "KEYS BLOCKED"
  }
}

resource "aws_elasticache_replication_group" "redis" {
  replication_group_description = "Redis for ${var.name}"
  replication_group_id          = "${var.name}-redis"

  engine = "redis"
  engine_version = var.engine_version
  node_type = var.node_type
  port = var.port
  parameter_group_name = aws_elasticache_parameter_group.redis.name

  automatic_failover_enabled = true
  number_cache_clusters = var.number_cache_clusters
  apply_immediately = true

  subnet_group_name = var.elasticache_subnet_group_name
  security_group_ids = [aws_security_group.redis.id]
}