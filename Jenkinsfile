pipeline {
	agent any
	environment {
		DOCKER_IMAGE = 'anataarisa/ademy'
	}
	tools {
		maven 'arisa-maven'
	}
	stages {
		stage('Git Repo & Clean'){
			steps{
				sh 'mvn -version'
				sh 'java -version'
				
			}
		}
		stage('Deploy Ademy to DEV'){

		}
	}

}
