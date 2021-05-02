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
          sh 'docker build -t spring-docker/blog .'
          sh 'docker run -p 8081:8081 spring-docker/blog'
          echo "deploying the application"
        }
     }
     
  }
  
}
