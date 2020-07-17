pipeline {
    agent any
	tools {
        go 'go13'
    }
    stages {
        stage('Build') {
            steps {
			    sh 'sh script/jenkins_build.sh'
            }
        }
    }
}
