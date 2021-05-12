pipeline{
  environment{
    registry = "juniordourado/blog"
    dockerImage = ''
  }
  agent any
  
  stages{
    stage("build"){
      
      steps {
          //sh './mvnw clean package -DskipTests=true'
          echo "building the application : ${env.BUILD_ID}"
        }
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
