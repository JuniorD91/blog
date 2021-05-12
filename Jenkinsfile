pipeline{
  environment{
    registry = "blog"
    dockerImage = 'juniordourado/blog'
  }
  agent any
  
  stages{
    
    stage("build Image"){
      steps {
        script {dockerImage = docker.build dockerImage}
        //${env.BUILD_ID}"
      }
     }
     
     stage("deploy In Docker Registry"){
      
      steps {
          script {
            docker.withRegistry('tcp://172.21.0.4:5000', '') {
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
