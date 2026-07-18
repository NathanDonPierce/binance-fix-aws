output "instance_public_ips" {
  description = "Public IP addresses of the fix-client EC2 instances"
  value       = aws_instance.fix_client[*].public_ip
}

output "instance_ids" {
  description = "EC2 instance IDs"
  value       = aws_instance.fix_client[*].id
}

output "ssh_connection_commands" {
  description = "Ready-to-use SSH commands for connecting to each instance"
  value = [
    for instance in aws_instance.fix_client :
    "ssh -i ~/.ssh/${var.key_pair_name}.pem ${var.ssh_user}@${instance.public_ip}"
  ]
}