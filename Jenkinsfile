pipeline {
    agent {
        label 'maven'
    }
    stages {
        stage('Build App') {
            steps {
                git branch: 'master', url: '${params.url}'
            }
        }
        stage('Test') {
            steps {
                sh "echo test"
            }
        }
    }
}