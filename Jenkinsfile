pipeline {
  agent any
  options {
    // Only keep the 10 most recent builds
    buildDiscarder(logRotator(numToKeepStr:'10'))
  }
  stages {
    stage ('Install') {
      steps {
        // install required gems
        sh 'bundle install'
      }      
      
      post {
        success {
          // Archive the built artifacts
          archive includes: 'pkg/*.gem'
        }
      }
    }
    stage ('Test') {
      steps {
        // run tests with coverage
        sh 'bundle exec rake all'
      }

      post {
        success {
          // publish html
          publishHTML (target: [
              allowMissing: false,
              alwaysLinkToLastBuild: true,
              keepAll: true,
              reportDir: 'coverage',
              reportFiles: 'index.html',
              reportName: 'Easyrest Report'
            ])
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