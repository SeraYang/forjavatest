pipeline {
    agent {
        label 'java'
    } 
    stages {
        stage('SayHello') {
            steps {
                echo 'Hello world!' 
            }
        }
        stage('FilesCheck') {
            steps {
                script {
                    echo "${env.WORKSPACE}"
                }
            }
        }
    }
}
