pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh "npm start &"
                sh "sleep 1"
                sh "echo $! > .pidfile"
                sh "kill $(cat .pidfile)"
            }
        }
    }
}