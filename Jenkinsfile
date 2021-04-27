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
               sh 'nohup python -m http.server 4200 &'
                sleep(20)
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