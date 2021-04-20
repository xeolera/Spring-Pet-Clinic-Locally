pipeline {
    agent any
    stages {
        
         stage('Start webserver') {
            steps {
				parallel(
					a: {
						dir("${env.WORKSPACE}/spring-petclinic-angular/static-content/"){
							sh "java -jar ./rawhttp.jar serve . -p 4200 &"
							}
					},
					b: {
						dir("${env.WORKSPACE}/spring-petclinic-rest/"){
							sh "./mvnw &"
						}
					}
                )
            }
        }
		stage('Close applications') {
			steps {
				sh "pkill java & pkill maven"
			}
		}
    }
}
        
