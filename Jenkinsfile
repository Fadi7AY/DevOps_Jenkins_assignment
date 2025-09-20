pipeline {
    //agent any
    agent { label 'linux-docker-extra'}
    parameters { string(name: 'NAME' , defaultValue: 'World') }

    stages{

        stage('Info') {
            steps {
                echo "Running on node: ${env.NODE_NAME}"
                echo "Workspace: ${env.WORKSPACE}"
            }
        }

        stage('Checkout'){
            steps {

                checkout scm

            }



        }

        stage('Run'){
            steps {
                
                sh 'scripts/hello.sh "$NAME"'


            }

    }

        stage('Archive'){

            steps { archiveArtifacts artifacts: 'output.txt', fingerprint:true}

        }


    }

}