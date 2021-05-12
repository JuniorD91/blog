pipeline{
  environment{
    imagename = "blog"
    dockerImage = ''
  }
  agent any
  
  stages{
    
    stage("build Image"){
      steps {
        script {dockerImage = docker.build imagename}
      }
     }
     
     stage("deploy In Docker Registry"){
      
      steps {
          script {
            docker.withRegistry('http://172.21.0.4:5000', '') {
              dockerImage.push("$BUILD_NUMBER")dockerImage.push('latest')
            }
        }
     }
     }
    stage("deploy"){
      
      steps {
            echo "deploy application"
        }
     }


  }
  
}
