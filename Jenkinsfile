pipeline {
    agent any
    stages {
        
         stage('Start webserver') {
            steps {
				parallel(
					a: {
						dir("${env.WORKSPACE}/spring-petclinic-angular-master/static-content/"){
							sh "python -m http.server 4200"
							}
					},
					b: {
						dir("${env.WORKSPACE}/spring-petclinic-rest-master/"){
							sh "./mvwn"
						}
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
        
