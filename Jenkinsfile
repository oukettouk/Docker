node {
    def reg = 'gitlab.com/jenkinslab1/Docker/container_registry'
    stage('clone'){
    checkout scm
    }
    def img = stage('Build'){
    docker.build("$reg")
    }
    stage('Run'){
    img.withRun("--name run-$BUILD_ID -p 80:80") { c ->
    sh 'docker ps'
    sh 'curl localhost'
    }
    }
    stage('Push'){
        docker.withRegistry('https://gitlab.com/') {
            img.push 'latest'
            img.push()
    }
    }
}
