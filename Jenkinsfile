node {

    checkout scm

    env.DOCKER_API_VERSION="1.23"
    
    sh "git rev-parse --short HEAD > commit-id

    stage 'build'

        sh 'mvn clean install'
    
}