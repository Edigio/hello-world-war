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
        sh 'cp /root/.jenkins/workspace/java-test-cicd/.repository/com/efsavage/hello-world-war/1.0.0/hello-world-war-1.0.0.war .'
        sh "docker build -t 127.0.0.1:30400/hellowar ."


    stage 'push'
        sh 'docker push 127.0.0.1:30400/hellowar'


    stage 'deploy'
        sh 'kubectl apply -f -'
        
    
}