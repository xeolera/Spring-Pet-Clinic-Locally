pipeline {
    agent any
    stages {
        stage('Build API') {
           steps {
               sh "nohup mvn spring-boot:run &"
             
           }
        }
        stage('Build Website') {
            steps {
               sh "nohup python -m http.server 4200 &"
               
           }
        }
        stage('Postman testing') {
            steps {
               sh 'newman run PetMain.postman_collection.json --environment PetE.postman_environment.json'
            }
            post {
                always {
                    junit '*/xml'
                }
            }
        }
    }
}
