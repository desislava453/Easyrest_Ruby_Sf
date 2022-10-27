pipeline {
    agent any
    options {
    // Keep the 10 most recent builds
    buildDiscarder(logRotator(numToKeepStr:'10')) 
    }
    stages {
      stage('Test') {

            steps {
                sh 'bundle exec rake single'
            publishHTML target: [
            allowMissing: false,
            alwaysLinkToLastBuild: false,
            keepAll: true,
            reportDir: 'coverage',
            reportFiles: 'index.html',
            reportName: 'RCov Report'
          ]
            }
            
        }
      }
  }
