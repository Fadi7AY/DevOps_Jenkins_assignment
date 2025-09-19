pipeline {
    agent any
    parameters { string(name: 'NAME' , defaultValue: 'World') }

    stages{

        stage('Run'){
            steps {
                checkout scm
                sh 'scripts/hello.sh "NAME"'


            }

    }

        stage('Archive'){

            steps { archiveArtifacts artifacts: 'output.txt', fingerprint:true}

        }



    }

}