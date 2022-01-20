node {
    def RegistryProject='https://hub.docker.com/r/oukettouk/jenkins_lab1'
    def IMAGE='${RegistryProject}:version-${env.BUILD_ID}'
    def app
    stage('clone'){
    checkout scm
    }
    stage('Build'){
    app = docker.build("$IMAGE")
    }
    stage('Run'){
    docker.image('$app').withRun('-p 80:80') { c ->
    sh 'docker ps'
    sh 'curl localhost'
    }
    }
    stage('Push'){
        docker.withRegistry('$RegistryProject') {
            app.push 'latest'
            app.push()
}
