resource "google_cloudbuild_trigger" "react-trigger" {
	github {
		owner	= "fostemi"
		name	= "terraform-ignite"
	
		push {
			branch	= "main"
		}
	}
	ignored_files	= [".gitignore", "*.tf"]
	
	filename	= "/angular-tour-of-heroes/cloudbuild.yaml"
}

