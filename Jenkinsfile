pipeline {
    agent any
    triggers {
        pollSCM('H/2 * * * *')
    }
    stages {
        stage('Build') {
         steps {
             println 'build stage'
             sh "./build.sh"
         }
         post{
            always{
                println "// *** resultados de los test unitarios *** //"
                junit 'build/test-results/test/*.xml'
            }
         }

        }
        stage('Deploy') {
          steps {
              println 'deploy stage'
              sh "./deploy.sh"
          }
        }
        stage('Verify') {
           steps {
               println 'verify stage'
               sh "./verify.sh"
           }
           post{
               always{
                   println "// *** resultados de los test de aceptación *** //"
                   junit 'build/test-results/test/*.xml'
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