pipeline {
  agent any
  options {
    // Only keep the 10 most recent builds
    buildDiscarder(logRotator(numToKeepStr:'10'))
    // Creates sidebar link, pointing to the generated report in workspace
    sidebarLinks([
            [displayName: 'HTML Report', iconFileName: '', urlName: 'http://desislava-virtual-machine:8080/job/All%20tests%20pipeline/' + currentBuild.number + '/execution/node/3/ws/coverage/index.html#_AllFiles']
        ])
  }
  stages {
    stage ('Test') {
      steps {
        // install required gems
        sh 'bundle install'
        
        // run tests with coverage
        sh 'bundle exec rake all'
      }
    }
  }
}