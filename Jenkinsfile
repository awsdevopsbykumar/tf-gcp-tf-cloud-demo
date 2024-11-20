pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'cd /var/lib/jenkins/workspace/pipeline-with-github-vandana && terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'cd /var/lib/jenkins/workspace/pipeline-with-github-vandana && terraform apply -auto-approve'
            }
        }
    }
}
