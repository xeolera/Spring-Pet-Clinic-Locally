pipeline {
    agent any
    stages {
      
       stage('newman') {
            steps {
                sh 'newman run Petclinic.postman_collection.json --environment Petclinic.postman_environment.json --reporters junit'
            }
            post {
                always {
                        junit '**/*xml'
                    }
                }
        }
      
      }
}
