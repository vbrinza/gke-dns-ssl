variable "region" {
  default = "europe-west1"
}
variable "cluster_name" {
  default = "terraform-cluster"
}
variable "username" {}
variable "password" {}
variable "project" {}
variable "dns_entry" {}
variable "zone_name" {}
variable "ip_address_name" {}
variable "location" {}

data "google_compute_zones" "available" {}
