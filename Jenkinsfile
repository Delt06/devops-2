pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'pip install -r app_python/test_requirements.txt'
                sh 'python app_python/test.py'
            }
        }
    }
}