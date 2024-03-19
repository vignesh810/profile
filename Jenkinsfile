pipeline{
    agent any
    stages{
        stage("git Checkout")
        {
           steps
            {
                 git url: 'https://github.com/vignesh810/profile.git', branch: 'main'
                 sh 'ls -l'
            }

        }
        stage("Build and generate artifact"){
            steps{
                sh "mvn clean install"
            }
        }   
        
        
    }    
    
        }
