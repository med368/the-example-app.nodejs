pipeline {
     environment{
   NEW_VERSION ='1.1.1'
   }
 
      agent { dockerfile true }
     stages{
         stage ("cloning") {
         
             steps{
             sh "[ -d 'the-example-app.nodejs' ] && rm -rf the-example-app.nodejs"
                 echo "cloning"
                sh "git clone https://github.com/med363/the-example-app.nodejs.git"
             }
         }
         stage ("Install dependenciess"){
             steps{
                 echo "installing dependencies"
                 
                 sh "cd the-example-app.nodejs && npm install"
             }
         }
        
       
         stage ("Deploy"){
             steps{
                 echo "build version ${NEW_VERSION}"
                 echo "start project"
                 sh "cd the-example-app.nodejs && npm run start:dev &"
             }
         }
         stage ("Test"){
             steps{
                 echo "verify"
                 sh "curl  -port 3000 -X POST http://localhost:3000" 
             }
         }
     }
    
}
