pipeline {
  agent any
  options {
    // Only keep the 10 most recent builds
    buildDiscarder(logRotator(numToKeepStr:'10'))
  }
  stages {
    stage ('Build') {
      steps {
        // install required gems
        sh 'bundle install'
        
        // run tests with coverage
        sh 'bundle exec rake all'
      
        // Archive the built artifacts
        archive includes: 'pkg/*.gem'

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