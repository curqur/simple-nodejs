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
                echo 'Need to add some tests'
            }
        }
        stage('Deploy for Development') {
            when {
                branch 'development'
            }
            steps {
                sh './scripts/deploy-dev.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './scripts/kill.sh'
            }
        }
        stage('Deploy for Production') {
            when { 
                branch 'master'
            }
            steps {
                sh './scripts/deploy-prod.sh'
            }
        }
    }
}