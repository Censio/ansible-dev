node('docker'){ 
    stage 'Building image' 
    git credentialsId: '3baac28d-25bc-42c0-ad32-265c7c2541cb', url: 'git@github.com:Censio/ansible-dev.git' 
    def image = docker.build "ansible:${env.BUILD_NUMBER}"
    stage 'Push Image'
    image.tag(["latest"])
    docker.withRegistry("https://490553117019.dkr.ecr.us-east-1.amazonaws.com") {
        image.push() // record this snapshot (optional) 
    }
}
