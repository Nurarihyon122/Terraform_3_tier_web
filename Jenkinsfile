pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    
  }

  stages {
    stage('Install Terraform') {
      steps {
        sh '''
          curl -O https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip
          unzip -o terraform_1.5.7_linux_amd64.zip
          chmod +x terraform
        '''
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

