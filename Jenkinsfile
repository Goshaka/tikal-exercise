node {
 stage('Checkout') {
 //   sh 'rm -rf * && git clone https://github.com/Goshaka/broadcom.git'
     sh 'pwd'
 }
      
  stage('Kill old containers') {
    sh 'if [ `sudo docker ps|wc -l` -ge 2 ];then sudo docker kill `sudo docker ps|grep -v "CONTAINER"|awk \'{print $1}\'`; fi'
   }
   stage('Remove old image') {
    sh 'if [ `sudo docker images|grep -v REPOSITORY|grep -v openjdk|wc -l` -gt 0 ];then sudo docker image  rm --force `sudo docker images|grep -v REPOSITORY|grep -v openjdk|awk \'{print $3}\'`; fi'
   }
 stage('Build Docker Image') {
    sh 'cd application && sudo docker build -t demo .'
  }
 stage('Run Docker Container') {
    sh 'sudo docker run -d  -p 80:8080 demo'
  }
  //stage('Test Application') {
   //sh 'curl -f 127.0.0.1'
  //}
}
