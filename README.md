# ROS-dj-tutorials 
Dockerized ROS tutorials with jupyter

## Prerequisites
* [Install Docker](https://docs.docker.com/install/)
* Install X server:
    - Windows: [XMing](http://www.straightrunning.com/XmingNotes/)
    - macOS: [XQuartz](https://www.xquartz.org/)
    - Linux: do nothing :)

### Configure your X server
Make sure your X server is running without access restrictions:
* Windows: 
    - run `XLaunch`
    - tick `No Access Control` on the `Additional Parameters` screen
* macOS:
    - run `XQuartz`
    - in the preferences, go to the `Security` tab and tick `Allow connections from network clients`
* Linux:
    - run in a terminal: `xhost +`

## Getting started

### Pull the image

    docker pull robinlab/ros-dj-tutorials
    
### Run the image

    docker run --name ros-dj-tutorials --rm -p 8888:8888 -e DISPLAY=<host_IP>:0.0 robinlab/ros-dj-tutorials
    
### Open this URL in your browser

    http://localhost:8888

If you are using Docker Toolbox on Windows, use the Docker Machine IP instead of ``localhost``. For example, http://192.168.99.100:8888. To find the IP address, use the command ``docker-machine ip``.

### Stop the container

Press `Ctrl-C` in the docker terminal.
If needed, run:

    docker container stop ros-dj-tutorials

Stop your X server or restore access control:
* Windows: 
    - exit `XLaunch`
* macOS:
    - exit `XQuartz`
* Linux: 
    - run in a terminal: `xhost -`

### Build the image locally

    git clone https://github.com/RobInLabUJI/ROS-dj-tutorials.git
    cd ROS-dj-tutorials
    docker build -t ros-dj-tutorials .
