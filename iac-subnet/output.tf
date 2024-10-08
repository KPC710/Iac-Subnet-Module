output "subnet_id" {
  value       = aws_subnet.main.id
  description = "The ID of the subnet"
}

output "subnet_arn" {
  value       = aws_subnet.main.arn
  description = "The arn of the subnet"
}

output "subnet_name" {
  value       = local.subnet_name
  description = "the name of the subnet"
}
