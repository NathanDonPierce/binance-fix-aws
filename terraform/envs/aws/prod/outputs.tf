output "ansible_control_node_public_ip" {
  description = "Public IP of the Ansible control node"
  value       = aws_instance.ansible_control_node.public_ip
}

output "ansible_control_node_ssh_command" {
  description = "SSH command to reach the control node from your laptop"
  value       = "ssh -i ~/.ssh/${var.key_pair_name}.pem ${var.ssh_user}@${aws_instance.ansible_control_node.public_ip}"
}

output "kubernetes_server_public_ip" {
  description = "Public IP of the kubernetes server node (not directly reachable — only via the Ansible control node)"
  value       = aws_instance.kubernetes_server.public_ip
}

output "kubernetes_server_id" {
  description = "Instance ID of the kubernetes server node"
  value       = aws_instance.kubernetes_server.id
}

output "kubernetes_agent_asg_name" {
  description = "Name of the kubernetes agent Auto Scaling Group"
  value       = aws_autoscaling_group.kubernetes_agents.name
}