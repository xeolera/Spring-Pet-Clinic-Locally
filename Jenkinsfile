pipeline {
    agent any
    stages {
         stage('Build API') {
            steps {
                sh "nohup mvn spring-boot:run &"
                sleep (20)
            }
         }
    }
}
