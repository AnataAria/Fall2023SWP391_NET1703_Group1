pipeline {
	agent any
	environment {
		DOCKER_IMAGE = 'anataarisa/ademy'
		DOCKER_COMPOSE_NAME = 'ademy-dev-application'
		DOCKER_COMPOSE_QA_FILE = 'docker-compose.qa.yaml'
		DOCKER_COMPOSE_PROD_FILE = 'docker-compose.prod.yaml'
		DOCKER_IMAGE_BACKEND_API = 'api-backend-server-qa'
		DOCKER_IMAGE_FRONTEND_SERVER = 'svelte-frontend-server-qa'
	}
	tools {
		maven 'Arisa CI/CD Maven'
	}
	stages {
		stage('Check System Infomation'){
			steps{
				sh 'mvn --version'
				sh 'java --version'
			}
		}
		stage('Clean Docker Enviroments'){
			steps{
				sh 'docker compose -f ' + DOCKER_COMPOSE_QA_FILE + ' -p ' + DOCKER_COMPOSE_NAME +  ' down --rmi all -v'
			}
		}
		stage('Build docker-compose qa enviroment and push images to docker-hub'){
			steps{
				withDockerRegistry(credentialsId: 'Arisa Docker Hub Account', url: 'https://index.docker.io/v1/'){
					sh 'docker compose -f ' + DOCKER_COMPOSE_QA_FILE + ' -p ' + DOCKER_COMPOSE_NAME + ' build'
					sh 'docker compose -f ' + DOCKER_COMPOSE_QA_FILE + ' -p ' + DOCKER_COMPOSE_NAME + ' up -d'
					sh 'docker tag ' + DOCKER_IMAGE_BACKEND_API + ':latest anataarisa/' + DOCKER_IMAGE_BACKEND_API + ':latest'
					sh 'docker tag ' + DOCKER_IMAGE_FRONTEND_SERVER + ':latest anataarisa/' + DOCKER_IMAGE_FRONTEND_SERVER + ':latest'
					sh 'docker push anataarisa/' + DOCKER_IMAGE_BACKEND_API + ':latest'
					sh 'docker push anataarisa/' + DOCKER_IMAGE_FRONTEND_SERVER + ':latest'
					sh 'docker rmi anataarisa/api-backend-server-qa:latest anataarisa/svelte-frontend-server-qa:latest'
				}
			}
		}
		// stage('Build docker-compose prod and push images for prod deployment'){
		// 	steps{
		// 		withDockerRegistry(credentialsId: 'Arisa Docker Hub Account', url: 'https://index.docker.io/v1/'){
		// 			sh 'docker compose -f ' + DOCKER_COMPOSE_PROD_FILE + ' -p ' + DOCKER_COMPOSE_NAME + ' build'
		// 			sh 'docker compose -f ' + DOCKER_COMPOSE_PROD_FILE + ' -p ' + DOCKER_COMPOSE_NAME + ' push'
		// 			// Tag the images with 'latest' before pushing
		// 			sh 'docker tag ' + DOCKER_IMAGE_BACKEND_API + ':latest ' + DOCKER_IMAGE_BACKEND_API + ':latest'
		// 			sh 'docker tag ' + DOCKER_IMAGE_FRONTEND_SERVER + ':latest ' + DOCKER_IMAGE_FRONTEND_SERVER + ':latest'

		// 			// Push the images with the 'latest' tag
		// 			sh 'docker push ' + DOCKER_IMAGE_BACKEND_API + ':latest'
		// 			sh 'docker push ' + DOCKER_IMAGE_FRONTEND_SERVER + ':latest'
		// 		}
		// 	}
		// }
	}

	post {
		always {
			cleanWs()
		}
	}

}
