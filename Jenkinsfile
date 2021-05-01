pipeline{
  
  agent any
  
  stages{
    stage("build"){
      
      steps {
          sh './mvnw clean package -DskipTests=true'
          echo "building the application"
        }
     }
     
     stage("test"){
      
      steps {
          echo "testing the application"
        }
     }
     
     stage("deploy"){
      
      steps {
          echo "deploying the application"
        }
     }
     
  }
  
}
