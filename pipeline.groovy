pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/organizationsahithi/sahithi.git'
            }
        }
        stage('List Workspace') {
            steps {
                sh 'ls -la'
            }
        }
        stage('Terraform Init') {
            steps {
                
                    sh 'terraform init'
                
            }
        }
        stage('Terraform Plan') {
            steps {
                
                    sh 'terraform plan'
                
            }
        }
        stage('Terraform Apply') {
            steps {
                
                    sh 'terraform apply -auto-approve'
                
            }
        }
    }
}