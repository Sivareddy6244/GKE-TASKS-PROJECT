terraform {
    backend "gcs" {
        bucket = "composer-bucket-siva6244"
        prefix = "terraform/statefile"
    }
}

module "gke_cluster" {
    source = "../modules/GKE"
    project_id = "cedar-context-433909-d9"
    region = "us-central1"
    cluster_name = "gke-cluster"
    network_name = "gke-network"
    subnet_name  = "gke-subnet"
    primary_node_pool_name = "primary-node-pool"
    secondary_node_pool_name = "secondary-node-pool"
    credential_file = var.credential_file
}

module "iam-roles" {
    source = "../modules/IAM"
    region = "us-central1"
    project_id = "cedar-context-433909-d9"
    service_account_id = "gke-service-account"
    credential_file = var.credential_file
}


