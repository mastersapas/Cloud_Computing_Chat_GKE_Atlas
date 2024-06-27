# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "project_id" {
  value       = var.project_id
  description = "GCloud Project ID"
}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}

output "mongodb_connection_string" {
    value = mongodbatlas_cluster.cluster.connection_strings[0].standard_srv
    description = "MongoDB Connection String"
}

output "mongodb_username" {
    value = var.db_username
    description = "MongoDB Username"
}

output "mongodb_password" {
    value = var.db_password
    description = "MongoDB Password"
}