resource "civo_firewall" "firewall" {
  name = var.name
}

resource "civo_firewall_rule" "kubernetes" {
  firewall_id = civo_firewall.firewall.id
  protocol    = "tcp"
  start_port  = "6443"
  end_port    = "6443"
  cidr        = ["66.182.195.139/32"]
  direction   = "ingress"
  label       = "kubernetes-api-server"
  action      = "allow"
}

resource "civo_kubernetes_cluster" "cluster" {
  name         = var.name
  cni          = var.cni
  applications = var.k8s_applications
  firewall_id  = civo_firewall.firewall.id
  pools {
    size       = var.instance_size
    node_count = var.number_of_nodes
  }
}
