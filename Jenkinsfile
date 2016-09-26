node('docker'){ 
    stage 'Building image' 
    checkout scm
    def image = docker.build "ansible:${env.BUILD_NUMBER}"
    stage 'Push Image'
    image.tag(["latest"])
    docker.withRegistry("https://490553117019.dkr.ecr.us-east-1.amazonaws.com") {
        image.push() // record this snapshot (optional) 
    }
}
