provider "google" {
  project = "${var.project}"
  region = "${var.region}"
  location = "${var.location}"
  // Provider settings to be provided via ENV variables
}

resource "google_container_cluster" "primary" {
  name = "${var.cluster_name}"
  initial_node_count = 3
  location = "${var.location}"

  network    = "default"
  subnetwork = "default"

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "/16"
    services_ipv4_cidr_block = "/22"
  }

  master_auth {
    username = "${var.username}"
    password = "${var.password}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
}