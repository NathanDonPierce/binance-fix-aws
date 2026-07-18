output "instance_public_ip" {
  description = "Public IP address of the fix-client EC2 instance"
  value       = aws_instance.fix_client.public_ip
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.fix_client.id
}

output "ssh_connection_command" {
  description = "Ready-to-use SSH command for connecting to the instance"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem ${var.ssh_user}@${aws_instance.fix_client.public_ip}"
}