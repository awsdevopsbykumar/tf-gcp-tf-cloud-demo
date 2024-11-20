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
                sh 'cd /var/lib/jenkins/workspace/tf-git-jenkins && terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'cd /var/lib/jenkins/workspace/tf-git-jenkins && terraform apply -auto-approve'
            }
        }
    }
}
