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

         

       stage('Build Image'){
        steps{
           sh 'docker compose build'
        }
       }

       stage('Push Image'){
        steps{
            sh 'docker compose push'
        }
       }
    }
        
}
