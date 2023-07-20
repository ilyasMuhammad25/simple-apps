pipeline{
    agent{
        node{
            label 'devops-ilyas'
        }
    }
    stages{
         stage('build app'){ 
            steps {
                sh 'npm install'
        }
          }

          stage('Run Test'){
            parallel{
              stage('unit test'){
                steps{
                  sh 'npm test'
                }
              }
            }  
       }

       stage('Build Image'){
        steps{
           sh 'docker compose build'
        }
       }

       stage{
        steps{
            sh 'docker compose push'
        }
       }
    }
        
}
