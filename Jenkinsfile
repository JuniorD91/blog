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
          sh './mvnw test'
          echo "testing the application"
        }
     }
     
     stage("deploy"){
      
      steps {
          sh 'docker -v'
          echo "deploying the application"
        }
     }
     
  }
  
}
