pipeline{
  environment{
    registry = "blog"
    dockerImage = 'juniordourado/blog'
  }
  agent any
  
  stages{
    stage("build Image"){
      script {dockerImage = docker.build dockerImage}
      //${env.BUILD_ID}"
     }
     
     stage("test"){
      
      steps {
          //sh './mvnw test'
          echo "testing the application"
        }
     }
    
    stage("deploy"){
      
      steps {
            echo "deploy application"
        }
     }


  }
  
}
