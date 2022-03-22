output "redis" {
  value = module.redis.redis
  sensitive = true
}