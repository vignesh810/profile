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
        stage("Docker Build & Push to ECR"){
            steps{
                sh './ecr_build.sh'
                sh 'echo "Created Docker image"'
            }
        }
        
    }    
    
        }
