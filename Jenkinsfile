pipeline {
    agent {
        label 'maven'
    }
    stages {
        stage('Build App') {
            steps {
                git branch: 'master', url: 'https://github.com/andrexbass/php-helloworld.git'
            }
        }
        stage('Test') {
            steps {
                sh "echo test"
            }
        }
    }
}