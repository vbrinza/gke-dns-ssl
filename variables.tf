variable "region" {
  default = "europe-west1"
}
variable "cluster_name" {
  default = "terraform-cluster"
}
variable "username" {}
variable "password" {}
variable "project" {}
data "google_compute_zones" "available" {}
