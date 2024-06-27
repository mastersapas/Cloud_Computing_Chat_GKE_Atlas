# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }

     mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.3.0"
    }
  }
  
  required_version = ">= 0.14"
}

