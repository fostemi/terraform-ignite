resource "google_cloudbuild_trigger" "cloudbuild_triggers" {
	for_each = var.user_tf ? toset(var.app_names) : toset([])

	project	= var.gcp_project_id
	name	= "${each.key}-ci"

	disabled = !var.use_gke
	
	github {
		owner	= "fostemi"
		name	= "terraform-ignite"
	
		push {
			branch	= "main"
		}
	}
	ignored_files	= [".gitignore", "*.tf"]
	
	filename	= "/angular-tour-of-heroes/cloudbuild.yaml"

	substitutions = {
		_APP_NAME	= each.key
		_DOMAIN		= "${each.key}.${var.domain}"
		_REGION		= local.region
		_ZONE		= local.zone
		_CLUSTER	= local.cluster_name
		_TENANT_CODE= split("-", var.repo_name)[1]
	}

}

