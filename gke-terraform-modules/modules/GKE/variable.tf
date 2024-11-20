variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "credential_file" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "cluster_name" {
  description = "GKE Cluster name"
  type        = string
}

variable "primary_node_pool_name" {
  description = "Name of the primary node pool"
  type        = string
}

variable "network_name" {
  description = "VPC network name"
  type        = string
}

variable "subnet_name" {
  description = "VPC subnet name"
  type        = string
}

variable "secondary_node_pool_name" {
  description = "Name of the secondary node pool"
  type        = string
}


