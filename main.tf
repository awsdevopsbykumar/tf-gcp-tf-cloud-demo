# Configure the Google Cloud provider
provider "google" {
  credentials = file("/opt/temp/key.json")
  project = "alert-autumn-442107-g2"
  region  = "us-east1-b"
}

#terraform { 
#  cloud { 
#    
#    organization = "awsdevopsbykumar" 
#
#    workspaces { 
#      name = "tf-gcp-tf-cloud-demo" 
#    } 
#  } 
#}


variable "GOOGLE_CREDENTIALS" {
 default = ""
}

variable "project" {
 default = ""
}

variable "rnd" {
 default = 100
}


resource "random_string" "compute_name" {
  length  = 4
  special = false
  upper   = false
}


resource "google_compute_instance" "default" {
  name         = "example-instance${random_string.compute_name.result}1"
  machine_type = "n1-standard-1"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Include public IP
    }
  }
}
