pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'bash scripts/build.sh'
            }
        }
        stage('Test') {
            steps {
                sh 'pytest /src/test.py'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying..'
                sh 'bash scripts/deploy.sh'
            }
        }
       
    }
}
