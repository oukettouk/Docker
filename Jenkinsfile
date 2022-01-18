node {
    def app
    stage('clone'){
    checkout scm
    }
    stage('Build'){
    app = docker.build("khalil/nginx")
    }
    stage('Test'){
    docker.image('khalil/nginx').withRun('-p 80:80') { c ->
    sh 'docker ps'
    sh 'curl localhost'
    }
    }
}
