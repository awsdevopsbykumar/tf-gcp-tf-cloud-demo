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
                sh 'cd ./tf-gcp-tf-cloud-demo && terraform init'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'cd ./tf-gcp-tf-cloud-demo && terraform apply -auto-approve'
            }
        }
    }
}
