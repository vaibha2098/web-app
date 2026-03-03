pipeline {
    agent any

    stages {
        stage('GitCheckout') {
            steps {
                git branch: 'main', url: 'https://github.com/vaibha2098/web-app.git'
            }
        }
        stage('Build') {
            steps {
                sh "mvn clean package"
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t vaibha2098/mymavenapp ."
                }
            }
        }
        stage('Push Docker Image to Dockerhub') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-cred') {
                       sh "docker push vaibha2098/mymavenapp"
                    }
                }
            }
        }
    }
}
