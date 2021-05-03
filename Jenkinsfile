pipeline{
  environment{
    registry = "juniordourado/blog"
    dockerImage = ''
  }
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
          //sh './mvnw test'
          echo "testing the application"
        }
     }
     
     stage("Build Imagem"){
      
      steps {
          script {
            dockerImage = docker.build registry + ":BUILD_NUMBER"
          }
        }
     }

     stage("Deploy Image"){
           steps {
               script {
                 docker.withRegistry(''){
                    dockerImage.push()
              }
           }
        }
     }



  }
  
}
