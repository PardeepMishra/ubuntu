pipeline{

	agent {label 'Master'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('64ba9651-5e90-4acd-ae68-82252c69d1ac')
	}

	stages {
	    
	   
		stage('Build') {

			steps {
				sh 'docker build -t docker19840/dockerimage_test2:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push docker19840/dockerimage_test2:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}