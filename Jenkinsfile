pipeline {

  agent any
  environment {
    //adding a comment for the commit test
    DEPLOY_CREDS = credentials('deploy-anypoint-user')
    MULE_VERSION = '4.4.0'
    BG = "abcd"
    WORKER = "Micro"
  }
  stages {
    stage('Build') {
      steps {
            bat 'mvn -B -U -e -V clean -DskipTests package'
      }
    }

    stage('Test') {
      steps {
          bat "mvn test"
      }
    }

     stage('Deploy Development') {
      environment {
        ENVIRONMENT = 'Sandbox'
        APP_NAME = 'sandbox-walmart-AS'
      }
      steps {
            bat 'mvn -U -V -e -B -DskipTests deploy -DmuleDeploy -Dmule.version="4.4.0" -Danypoint.username="Adithya-Oct" -Danypoint.password="Adi@2020" -Dcloudhub.app="sandbox-walmart-AS" -Dcloudhub.environment="Sandbox" -Dcloudhub.bg="abcd" -Dcloudhub.worker="Micro"'
      }
    }
    
  }

  tools {
    maven 'MAVEN_HOME'
  }
}