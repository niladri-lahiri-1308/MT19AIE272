## Process Followed

1. Install Docker in the system
2. Create a Dockfile (exact name with no extension)
3. Read the docker documentation and install python, pip and flask(to create a web application)
4. Create required html files

## Deploy web application using docker containers by creating docker image from scratch

1. Build the docker image using 'docker build .' (This has to be in the directory where the Dockerfile is present)
2. Run the container from the image and start the container using 'docker run --name name_we_want_to_give docker_image_sha256_generated_from_above_command'
3. Run the webapp using 'python name_of_the_app.py'

## Below is the image from cmd
![alt text](https://github.com/niladri-lahiri-1308/MT19AIE272/blob/main/images/DockerCapture.PNG)

## Below is the image of localhost from browser
![alt text](https://github.com/niladri-lahiri-1308/MT19AIE272/blob/main/images/DockerLocalHost.PNG)
