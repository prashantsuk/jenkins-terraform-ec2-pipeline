pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/prashantsuk/jenkins-terraform-ec2-pipeline.git']]])            

          }
        }
        
        stage ("terraform init ") {
            steps {
                sh ('terraform init') 
            }
        }
         stage ("terraform plan") {
            steps {
                sh ('packer validate') 
            }
        }
         stage ("terraform plan") {
            steps {
                sh ('terraform plan') 
            }
        }
        
        stage ("terraform Action") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform ${action} --auto-approve') 
           }
        }
    }
}
