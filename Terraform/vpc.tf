# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "gke_num_nodes" {
  description = "gke num nodes"
}

variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "mongodbatlas_region" {
  description = "mongodbatlas region"
}

variable "mongodbatlas_project_id" {
  description = "mongodbatlas public key"
}

variable "mongodbatlas_public_key" {
  description = "mongodbatlas public key"
}

variable "mongodbatlas_private_key" {
  description = "mongodbatlas private key"
}

variable "db_username" {
  description = "The username for the MongoDB database user"
  type        = string
  default     = "atlasmongodbcluster"
}

variable "db_password" {
  description = "The password for the MongoDB database user"
  type        = string
  default     = "IY58P5M18d25zmR4"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Configure the MongoDB Atlas Provider 
provider "mongodbatlas" {
  public_key = var.mongodbatlas_public_key
  private_key  = var.mongodbatlas_private_key
}

# Create the resources
# VPC
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
