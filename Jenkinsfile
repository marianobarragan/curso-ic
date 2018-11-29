pipeline {
    agent any
    triggers {
        pollSCM('H/2 * * * *')
    }
    stages {
        stage('Build') {
         steps {
             println 'build stage'
             ./build.sh
         }
         post{
            always{

                println "ava se exportan los resultados de los test unitarios"
            }
         }

        }
        stage('Deploy') {
          steps {
              println 'deploy stage'
              ./deploy.sh
          }
        }
        stage('Verify') {
           steps {
               println 'verify stage'
               ./verify.sh
           }
           post{
               always{

                   println "ava se exportan los resultados de los test de aceptación"
               }
           }
        }

    }
    post {
        success {
            echo 'El job finalizó OK! :)'
        }
        failure {
            echo 'El job rompio! :('
        }
    }
}