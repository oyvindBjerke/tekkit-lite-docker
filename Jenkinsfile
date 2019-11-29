String dockerId = "obje"
String app = 'tekkit-lite-docker'
GString imageName = "${dockerId}/${app}"

pipeline {

    agent any

    stages {
        stage('Build image') {
            steps {
                sh "docker build -t ${imageName} ."
            }
        }
        stage('Push image') {
            environment {
                DOCKER = credentials('docker-hub-credentials')
            }
            steps {
                sh 'docker login -u $DOCKER_USR -p $DOCKER_PSW'
                sh "docker push ${imageName}"
            }
        }
    }
}
