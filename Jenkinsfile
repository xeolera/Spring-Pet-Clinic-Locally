pipeline {
    agent any
    stages {
        
         stage('Start webserver') {
            steps {
				parallel(
					a: {
						sh "python -m spring-petclinic-angular-master/static-content/http.server 4200"
					},
					b: {
						sh "maven spring-petclinic-rest-master/spring-boot:run"
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
        
