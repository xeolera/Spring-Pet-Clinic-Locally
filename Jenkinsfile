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
               script {
                    try {
                       sh 'newman run API_test/ITERATION.postman_collection.json -n 10 --environment API_test/PetE.postman_environment.json --reporters junit'
                    } catch (Exception e) {
                        echo "Tests are failing, continue pipeline..."
                    }
                }
            }
            post {
                always {
                    junit '**/*.xml'
                }
            }
        }        
    }
}
