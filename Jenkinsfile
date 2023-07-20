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
    }
        
}
