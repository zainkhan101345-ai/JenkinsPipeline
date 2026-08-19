pipeline{
    agent any
    parameters{
        booleanParam(name:'Plan Terraform',defaultValue:false,description:'Terraform Plan')
        booleanParam(name:'Apply Terraform',defaultValue:false,description:'Terraform Apply')
        booleanParam(name:'Destroy Terraform',defaultValue:false,description:'Terraform Destroy')

    }
    stages{
       stage('Clone Repo') {
           steps {
              deleteDir()

                      // commands here run inside workspace/infra
                    //   sh 'ls -la'
                     echo '================ Terraform Init ================'

                        dir('AWSInfra') {
                            bat 'terraform init'
                        }

                      echo '================================================='
                  
                }
        }
    }
}