pipeline {
    agent any
    stages {
        stage('Build API') {
           steps {
               sh "cd spring-petclinic-rest"
               sh "nohup mvn spring-boot:run &"
                sleep(20)
           }
        }
         stage('Build Website') {
            steps {
               sh 'cd spring-petclinic-angular/static-content && curl https://jcenter.bintray.com/com/athaydes/rawhttp/rawhttp-cli/1.0/rawhttp-cli-1.0-all.jar -o rawhttp.jar && nohup java -jar ./rawhttp.jar serve . -p 4200 &'  
                sleep(3)
                  }
           }
      
         stage('Postman testing') {
            steps {   
               sh 'newman run PetMain.postman_collection.json --environment PetE.postman_environment.json'
            }
            post {
                always {
                    junit '**/*xml'
                }
            }
        }
        
        stage('Robot Framework System tests with Selenium') {
            steps {
                sh 'robot --variable BROWSER:headlesschrome -d Robot_tests/Results Robot_tests/Tests'
            }
            post {
                always {
                    script {
                          step(
                                [
                                  $class              : 'RobotPublisher',
                                  outputPath          : 'Robot_tests/Results',
                                  outputFileName      : '**/output.xml',
                                  reportFileName      : '**/report.html',
                                  logFileName         : '**/log.html',
                                  disableArchiveOutput: false,
                                  passThreshold       : 50,
                                  unstableThreshold   : 40,
                                  otherFiles          : "**/*.png,**/*.jpg",
                                ]
                          )
                    }
                }
            }
        }
        
    }
}
