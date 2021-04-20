pipeline {
    agent any
    stages {
        
         stage('Start webserver') {
            steps {
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
            }
        }
    }
}
        
