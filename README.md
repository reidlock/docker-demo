# Docker Container Tutorial 1
## Simple cross-container communication

#### Overview
This project is a fairly simple example to demonstrate the following basic Docker concepts:

* Creating images from a Dockerfile
* Starting containers
* Creating a network for containers to talk to each other
* Doing cross-container communication

### Running the demo
This demo is designed to run on a Linux based system. It was developed on Linux Mint 17.3. There are tools available to simulate native Docker functionality on Windows and Mac systems, and the demo should work on top of those tools, but it hasn't been tested.

(One of many) great things about Docker is that to run this demo you only need a basic Bash shell and... Docker! (Well, and git). Any dependencies used by the code that runs in the containers, such as Python 3, curl, etc., are embedded in the containers, and not necessary on the host.

To run the demo:
1. Install Docker
2. Clone the repository
3. Run the rundemo.sh script at the root of the repo

If everything works as expected, you'll see "Test success!" at the end of the output from the script. 

### Concepts
There are already many great resources for learning Docker out there. This is a super short and sweet coverage of the basic concepts involved in this demo.

#####Docker
Docker is a technology built on top of several Linux kernel features which together provide a level of isolation for what Docker calls "containers". As long as your system is running a Linux kernel with support for containers you can run Docker. An easy way to think about Docker is as  

Containers isolat
#####Images
An "Image" is the actual binary representation of what gets "run" in a container. So, if a container is a base Linux install, then image contains all the bits for everything from the Kernel up.

