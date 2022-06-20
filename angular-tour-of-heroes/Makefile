IMG ?= gcr.io/terraform-ignite/angular
docker-build:
	@echo "Building the container for the application..."
	docker build -t ${IMG} .
	@echo "Container built successfully!"

docker-run:
	@echo "Begin running application..."
	docker run -it --rm -p 9000:80 ${IMG}
	@echo "The application is up and running!"

docker-stop:
	@echo "Stopping application"
	docker stop angular-tour-of-heroes
	@echo "Successfully stopped application!"

docker-push:
	@echo "Pushing the container for the application..."
	docker push ${IMG}
	@echo "Container built successfully!"
