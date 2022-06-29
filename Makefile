
helm:
	helm upgrade -i angular-tour-of-heroes charts -n angular-tour-of-heroes --create-namespace

dry:
	helm template angular-tour-of-heroes charts -n angular-tour-of-heroes

