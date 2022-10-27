pipeline {
    agent any
    stages {
        stage('Test') {

            steps {
                sh 'REPORT_PATH=reports --format RspecHtmlReporter bundle exec rake single'
            }
        }
    }
}