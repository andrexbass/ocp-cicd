pipeline {
    agent {
        label 'maven'
    }
    stages {
        stage('Build App') {
            steps {
                git branch: 'master', url: env.URL
            }
        }
        stage('Test') {
            steps {
                sh "echo test"
            }
        }
    }
}