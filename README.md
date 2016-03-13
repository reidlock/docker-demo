# Docker Container Tutorial 1
## Simple cross-container communication

### Overview
This project is a fairly simple example to demonstrate the following basic Docker concepts:

* Creating images from a Dockerfile
* Starting containers
* Creating a network for containers to talk to each other
* Doing cross-container communication

I built this demo as I was learning Docker myself. It's a way for me to help solidify the concepts, while possibly providing something that helps someone else out. Please let me know if I mis-state anything! 

### Running the demo
This demo is designed to run on a Linux based system. It was developed on Linux Mint 17.3. There are tools available to simulate native Docker functionality on Windows and Mac systems, and the demo should work on top of those tools, but it hasn't been tested.

(One of many) great things about Docker is that to run this demo you only need a basic Bash shell and... Docker! (Well, and git). Any dependencies used by the code that runs in the containers, such as Python 3, curl, etc., are embedded in the containers, and not necessary on the host.

To run the demo:
1. Install Docker
2. Clone the repository
3. Run the rundemo.sh script at the root of the repo

If everything works as expected, you'll see "Test success!" at the end of the output from the script. 

Poke around in the demo script to see how the images and containers are set up and run.
