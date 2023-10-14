pipeline {
	agent any
	environment {
		DOCKER_IMAGE = 'anataarisa/ademy'
		DOCKER_COMPOSE_NAME = 'ademy-dev-application'
		DOCKER_COMPOSE_DEV_FILE = 'docker-compose.dev.yaml'
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
				sh 'docker-compose -f ' + ${DOCKER_COMPOSE_DEV_FILE} + ' -p ' + ${DOCKER_COMPOSE_NAME} +  ' down --rmi all -v'
			}
		}
		// stage('Source Testing'){
		// 	steps{
		// 		dir('./api/drawingcouseselling'){
		// 			sh 'mvn test -Pdev'
		// 		}
		// 		// dir('./frontend/my-app'){
		// 		// 	sh 'pnpm i'
		// 		// 	sh 'pnpm dev'
		// 		// }
		// 	}
		// }
		stage('Build docker-compose dev and push images'){
			steps{
				withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/'){
					sh 'docker-compose -f ' + ${DOCKER_COMPOSE_DEV_FILE} + ' -p ' + ${DOCKER_COMPOSE_NAME} + ' build'
					sh 'docker-compose -f ' + ${DOCKER_COMPOSE_DEV_FILE} + ' -p ' + ${DOCKER_COMPOSE_NAME} + ' up'
				}
			}
		}
	}

	post {
		always {
			cleanWs()
		}
	}

}
