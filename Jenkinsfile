pipeline {
    agent any
    stages {
        stage('Build API') {
           steps {
               sh "nohup mvn spring-boot:run &"
               sleep (20)
           }
        }
        stage('Build Website') {
            steps {
               sh "nohup python -m http.server 4200 &"
               sleep(3)
           }
        }
    }
}
