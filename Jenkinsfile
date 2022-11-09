pipeline {
    agent any
    options {
    // Keep the 10 most recent builds
    buildDiscarder(logRotator(numToKeepStr:'10')) 
  }
    stages {
      stage('Test') {

            steps {
                sh 'bundle exec rake all'
                // Archive the built artifacts
                archive includes: 'pkg/*.gem'
        post {
            success {
                // publish html
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: 'coverage',
                    reportFiles: 'index.html',
                    reportName: 'Easyrest Report'
                ]
            }
            
        }
      }
  }
  post {
    always {
      echo "Send notifications for result: ${currentBuild.result}"
    }
  }
}
}
