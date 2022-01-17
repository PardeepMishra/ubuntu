pipeline{

	agent {label 'Master'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('f2792baf-889f-42ef-a282-bbcf349c886f')
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