pipeline {
    agent any
    stages {
        stage('Test') {

            steps {
                sh 'RAILS_ENV=test rspec'
            }
        }
    }
}