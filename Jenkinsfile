pipeline{

	agent {label 'Master'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('24d59cbc-c86b-4fa0-8a07-2221aedb3e2c')
	}

	stages {
	    
	   /*  stage('gitclone') {

			steps {
				git 'https://github.com/PardeepMishra/ubuntu.git'
			}
		} */

		stage('Build') {

			steps {
				sh 'docker build -t docker19840/dockerimage_test:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push docker19840/dockerimage_test:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}