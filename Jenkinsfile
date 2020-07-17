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
        stage('Package') {
            steps {
                sh 'sh script/jenkins_package.sh $BRANCH_NAME'
            }
        }
    }
}
