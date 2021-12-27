pipeline{

	agent {label 'Master'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('5412eeb4-05a9-4e16-8aa1-3b6eeb7bf698')
	}

	stages {
	    
	   /*  stage('gitclone') {

			steps {
				git 'https://github.com/PardeepMishra/ubuntu.git'
			}
		} */

		stage('Build') {

			steps {
				sh 'docker build -t docker19840/nodeapp_test:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push docker19840/nodeapp_test:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}