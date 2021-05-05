pipeline {
    agent any
    stages {
        stage('Build API') {
           steps {
               sh "cd spring-petclinic-rest && nohup mvn spring-boot:run &"
               sleep(20)
           }
        }
      
         stage('Postman testing') {
            steps {   
               sh 'newman run API_test/ITERATION.postman_collection.json --environment API_test/PetE.postman_environment.json --reporters junit'
            }
            post {
                always {
                    junit '**/*.xml'
                }
            }
        }        
    }
}
