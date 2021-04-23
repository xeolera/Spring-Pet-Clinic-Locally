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
    }
}
