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
            docker.withRegistry('tcp://172.21.0.4:5000') {

            echo "registry entrou"
          }
        }
     }


  }
  
}
