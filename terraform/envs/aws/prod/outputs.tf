output "ansible_control_node_public_ip" {
  description = "Public IP of the Ansible control node"
  value       = aws_instance.ansible_control_node.public_ip
}

output "ansible_control_node_ssh_command" {
  description = "SSH command to reach the control node from your laptop"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem ${var.ssh_user}@${aws_instance.ansible_control_node.public_ip}"
}

output "instance_public_ips" {
  description = "Public IP addresses of the ws-client EC2 instances (reachable only from the control node)"
  value       = aws_instance.ws_client[*].public_ip
}

output "instance_ids" {
  description = "EC2 instance IDs"
  value       = aws_instance.ws_client[*].id
}

output "ssh_connection_commands" {
  description = "SSH commands for connecting to each ws-client instance — must be run from the control node"
  value = [
    for instance in aws_instance.ws_client :
    "ssh -i ~/.ssh/${var.key_pair_name}.pem ${var.ssh_user}@${instance.public_ip}"
  ]
}