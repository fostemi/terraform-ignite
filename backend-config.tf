terraform {
	backend "gcs" {
		bucket	= "angular-container"
		prefix	= "state"
	}
	required_version = ">= 0.12.7"
	required_providers {
		google = {
			source = "hashicorp/google"
			version = "3.82.0"
		}
	}
}

provider "google" {
	project	= "terraform-ignite"
	region	= local.region
	zone	= local.zone
}
