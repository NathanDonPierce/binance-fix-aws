# Cross-referencing security group rules

resource "aws_security_group_rule" "server_from_agents_api" {
  type                     = "ingress"
  from_port                = 6443
  to_port                  = 6443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.kubernetes_server.id
  source_security_group_id = aws_security_group.kubernetes_agents.id
  description              = "k3s API from agent nodes"
}

resource "aws_security_group_rule" "server_from_agents_vxlan" {
  type                     = "ingress"
  from_port                = 8472
  to_port                  = 8472
  protocol                 = "udp"
  security_group_id        = aws_security_group.kubernetes_server.id
  source_security_group_id = aws_security_group.kubernetes_agents.id
  description              = "Flannel VXLAN from agent nodes"
}

resource "aws_security_group_rule" "agents_from_server_vxlan" {
  type                     = "ingress"
  from_port                = 8472
  to_port                  = 8472
  protocol                 = "udp"
  security_group_id        = aws_security_group.kubernetes_agents.id
  source_security_group_id = aws_security_group.kubernetes_server.id
  description              = "Flannel VXLAN from server"
}
