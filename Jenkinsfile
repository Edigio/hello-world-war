node {

    checkout scm

    env.DOCKER_API_VERSION="1.23"
    
    stage 'build'
    sh 'mvn clean install'
    
}