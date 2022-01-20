node {
    def reg = 'hub.docker.com/r/oukettouk/jenkins_lab1'
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
        docker.withRegistry('https://hub.docker.com/r/oukettouk/jenkins_lab1') {
            img.push 'latest'
            img.push()
    }
    }
}
