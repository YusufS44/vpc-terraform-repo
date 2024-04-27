resource "google_compute_network" "vpc" {
  name                    = "toy-soldiers-87-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet-us-east1-01"
  region        = "us-east1"
  network       = google_compute_network.vpc.id
  ip_cidr_range = "10.236.1.0/24"
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "subnet-us-east1-02"
  region        = "us-east1"
  network       = google_compute_network.vpc.id
  ip_cidr_range = "10.236.2.0/24"
}
