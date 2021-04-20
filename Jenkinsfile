pipeline {
    agent any
    stages {
        
         stage('Start webserver') {
            steps {
				parallel(
					a: {
						sh "cd spring-petclinic-angular-master/static-content/ & python -m http.server 4200"
					},
					b: {
						sh "mvnw spring-petclinic-rest-master/spring-boot:run"
					}
                )
            }
        }
		stage('Close applications') {
			steps {
				sh "pkill python & pkill maven"
			}
		}
    }
}
        
