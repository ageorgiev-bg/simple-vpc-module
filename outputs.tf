output "vpc_id" {
  value       = module.vpc[*].vpc_id
  description = "Module VPC id."
}

output "cidr_block" {
  value       = aws_vpc.main[*].cidr_block
  description = "VPC cidr_block."
}