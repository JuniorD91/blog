pipeline{
  environment{
    imagename = "blog"
    dockerImage = ''
  }
  agent any
  
  stages{
    
    stage('build Image'){
      steps {
        script {dockerImage = docker.build imagename}
      }
     }
    
  }
}
