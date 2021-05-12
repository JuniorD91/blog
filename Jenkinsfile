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
    
    stage('Deploy Image'){
      steps {
        script {
          docker.withRegistry('https://e7eb8b6113cb.ngrok.io', '') {             
              dockerImage.push("$BUILD_NUMBER")
              dockerImage.push('latest')
          }
        }
      }
     }
    
  }
}
