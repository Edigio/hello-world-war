node {

    checkout scm

    env.DOCKER_API_VERSION="1.23"
    
    stage 'maven build'
    withMaven(
        // Maven installation declared in the Jenkins "Global Tool Configuration"
        maven: 'M3',
        // Maven settings.xml file defined with the Jenkins Config File Provider Plugin
        // Maven settings and global settings can also be defined in Jenkins Global Tools Configuration
        mavenSettingsConfig: '70e340f6-df1e-4d0d-b016-6dda52da3282',
        mavenLocalRepo: '.repository') {

            sh 'mvn clean install'
        }

    stage 'docker build'
    sh 'ls'
    sh 'cp com/efsavage/hello-world-war/1.0.0/hello-world-war-1.0.0.war .'
    ws ('com/efsavage/hello-world-war/1.0.0') {
        sh "docker build -t egidio/hellowar ."
    }
    
}