output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC id."
}

output "cidr_block" {
  value       = aws_vpc.main.cidr_block
  description = "VPC cidr_block."
}

output "public_subnets" {
  value       = values(aws_subnet.public)[*].id #[for subnet in values(aws_subnet.public)[*] : subnet.id]
  description = "VPC cidr_block."
}

output "private_subnets" {
  value       = values(aws_subnet.private)[*].id # [for subnet in values(aws_subnet.private)[*] : subnet.id]
  description = "VPC cidr_block."
}