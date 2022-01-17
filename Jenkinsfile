pipeline{

	agent {label 'Master'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('12392ee9-2165-4285-8886-38e636096987')
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