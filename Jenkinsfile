node {
    def RegistryProject='https://hub.docker.com/r/oukettouk/jenkins_lab1'
    def IMAGE='${RegistryProject}:version-${env.BUILD_ID}'
    stage('clone'){
    checkout scm
    }
    def img = stage('Build'){
    docker.build("$IMAGE", '.')
    }
    stage('Run'){
    img.withRun("--name run-$BUILD_ID -p 80:80") { c ->
    sh 'docker ps'
    sh 'curl localhost'
    }
    }
    stage('Push'){
        docker.withRegistry('$RegistryProject') {
            img.push 'latest'
            img.push()
}
