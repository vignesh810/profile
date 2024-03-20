pipeline{
    agent any
    tools{
        jdk 'jdk8'
        maven 'MAVEN3'
        
    }
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
                sh 'mvn clean install'
            }
        }   
        stage("build docker image"){
            steps{
                sh 'sudo docker build -t vprofile:$BUILD_ID .'
                sh 'echo "Created Docker image"'
            }
        }
        
    }    
    
        }
