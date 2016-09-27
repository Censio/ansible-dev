node('docker'){ 
    stage 'Building image' 
    checkout scm
    def image = docker.build "ansible:${env.BUILD_NUMBER}"
    stage 'Push Image'
    docker.withRegistry("https://490553117019.dkr.ecr.us-east-1.amazonaws.com") {
        image.push("latest") // record this snapshot (optional) 
    }
}
