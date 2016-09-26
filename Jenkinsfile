parallel 'build-deb':{
    node(){
        checkout scm
        sh './build-debian-censio.sh'
    }
}, 'build-docker':{
    node('docker'){ 
        checkout scm
        def image = docker.build "ansible:${env.BUILD_NUMBER}"
        image.tag(["latest"])
        docker.withRegistry("https://490553117019.dkr.ecr.us-east-1.amazonaws.com") {
            image.push() // record this snapshot (optional) 
        }
    }
}
