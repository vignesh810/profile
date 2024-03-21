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
               sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 499932433650.dkr.ecr.us-east-1.amazonaws.com'
               sh 'docker build -t vprofile:latest .'
               sh 'docker tag vprofile:latest 499932433650.dkr.ecr.us-east-1.amazonaws.com/eks-project:vprofile-latest'
               sh 'docker push 499932433650.dkr.ecr.us-east-1.amazonaws.com/eks-project:vprofile-latest'
               sh 'docker logout 753634426646.dkr.ecr.us-east-1.amazonaws.com/eks-project'

            }
            
        }
        stage("EKS DEployment"){
            steps{
                sh 'kubectl get po'
                sh  'kubectl apply -f .'
            }
        }

        
        
    }    
    
        }
