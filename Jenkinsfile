pipeline {
    agent any
    stages {
        
         stage('Build') {
            steps {
<<<<<<< HEAD
				parallel(
					a: {
						dir("${env.WORKSPACE}/spring-petclinic-angular/static-content/"){
							bat "java -jar ./rawhttp.jar serve . -p 4200 &"
							}
					},
					b: {
						dir("${env.WORKSPACE}/spring-petclinic-rest/"){
							bat "mvnw spring-boot:run &"
						}
					}
                )
=======
                sh "mvn compile"
            }
        }
        stage('Test') {
            steps {
                sh "mvn test"
            }
            post {
                always {
                    junit '*/TEST.xml'
                }
>>>>>>> parent of 6f8f642 (Update Jenkinsfile)
            }
        }
    }
}
        
