pipeline{
  environment{
    registry = "blog"
    dockerImage = ''
  }
  agent any
  
  stages{
    stage("build"){
      
      steps {
          //sh './mvnw clean package -DskipTests=true'
          echo "building the application"
        }
     }
     
     stage("test"){
      
      steps {
          //sh './mvnw test'
          echo "testing the application"
        }
     }
    
    stage("test"){
      
      steps {
          sh './mvnw test'
        }
     }


  }
  
}
