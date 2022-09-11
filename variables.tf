variable "name" {
  description = "name of the cluster"
  type        = string
  default     = "demo"
}

variable "instance_size" {
  description = "instance type of the worker nodes"
  type        = string
  default     = "g3.large"
}
variable "number_of_nodes" {
  description = "Number of worker nodes"
  type        = string
  default     = "3"

}

variable "k8s_applications" {
  description = "list of k8s applications to be installed"
  type        = string
  default     = ""
}
variable "cni" {
  description = "CNI plugin to be used"
  type        = string
  default     = "flannel"
}
