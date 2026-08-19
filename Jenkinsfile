pipeline {
    agent any

    parameters {
        booleanParam(name: 'Plan Terraform', defaultValue: false, description: 'Terraform Plan')
        booleanParam(name: 'Apply Terraform', defaultValue: false, description: 'Terraform Apply')
        booleanParam(name: 'Destroy Terraform', defaultValue: false, description: 'Terraform Destroy')
    }

    stages {

        stage('Terraform Init') {
            steps {

                echo '================ Terraform Init ================'

                dir('AWSInfra') {
                    bat 'dir'
                    bat 'terraform init'
                }

                echo '================================================='
            }
        }
    }
}