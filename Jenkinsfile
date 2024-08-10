pipeline {
    agent any
    tools {
	    maven "MAVEN3"
	    jdk "OracleJDK8"
	}

    environment {
        registryCredential = 'ecr:us-east-1:awscreds'
        appRegistry = "843576970817.dkr.ecr.us-east-1.amazonaws.com/jenkins-ci-cd-docker-image"
        sampleAppRegistry = "https://843576970817.dkr.ecr.us-east-1.amazonaws.com"
        cluster = "Jenkins-CI-CD-ECS-Cluster"
        service = "Jenkins-CI-CD-Service"
    }
    stages {
        stage('Fetch code'){
            steps {
                git branch: 'jenkins-cd', url: 'https://github.com/ItsNotRohit02/Jenkins-CI-CD-Pipeline.git'
            }
        }


        stage('Test'){
            steps {
                sh 'mvn test'
            }
        }

        stage ('Checkstyle Analysis'){
            steps {
                sh 'mvn checkstyle:checkstyle'
            }
            post {
                success {
                    echo 'Generated Analysis Result'
                }
            }
        }
    
        stage('Sonar Analysis') {
            environment {
                scannerHome = tool 'sonar4.7'
            }
            steps {
                withSonarQubeEnv('sonar') {
                    sh '''${scannerHome}/bin/sonar-scanner \
                    -Dsonar.host.url=http://192.168.33.12:9000 \
                    -Dsonar.projectKey=sample \
                    -Dsonar.projectName=sample \
                    -Dsonar.projectVersion=1.0 \
                    -Dsonar.sources=src/ \
                    -Dsonar.java.binaries=target/test-classes/com/visualpathit/account/controllerTest/ \
                    -Dsonar.junit.reportsPath=target/surefire-reports/ \
                    -Dsonar.jacoco.reportsPath=target/jacoco.exec \
                    -Dsonar.java.checkstyle.reportPaths=target/checkstyle-result.xml'''
                }
            }
        }

        stage('Build App Image') {
            steps {
                script {
                    dockerImage = docker.build(appRegistry + ":$BUILD_NUMBER", "./Docker-files/app/multistage/")
                }

            }
        }

        stage('Upload App Image') {
            steps{
                script {
                    docker.withRegistry( sampleAppRegistry, registryCredential ) {
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push('latest')
                    }
                }
            }
        }

        stage('Deploy to ECS') {
            steps {
                withAWS(credentials: 'awscreds', region: 'us-east-1') {
                    sh 'aws ecs update-service --cluster ${cluster} --service ${service} --force-new-deployment'
                }
            }
        }
    }
}