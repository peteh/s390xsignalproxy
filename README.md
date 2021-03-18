# s390xsignalproxy

This repo provides you with tools to get a Signal TLS Proxy running on a s390x IBM Cloud Hyper Protect Virtual Server. It will create a certbot docker container that can run on s390x IBM cloud architecture. Certbot does not provide this architecture by default and therefore the Signal Proxy setup will fail on a IBM machine. 

# 1. Get a Hyper Protect Server from IBM cloud
IBM offers them for free for one month on their ibm cloud. Just set one up on https://cloud.ibm.com/catalog/services/hyper-protect-virtual-server

# 2. Machine Setup
Log into your new IBM machine. 

Install some requirements that we will need later. Curl will be needed for setting up Signal Proxy, but they don't have it in their requirements list. If you don't install it you won't see an error message and the system will just fail to start in the end. 
```console
$ sudo apt-get install docker docker-compose wget curl git
```

Now clone this repo and build the docker container to be available locally. 
```console
$ git clone https://github.com/peteh/s390xsignalproxy.git
$ cd s390xsignalproxy
$ sudo ./build.sh
```

Check if you can see the certbot image on your local docker registry. You should see something similar to this: 
```console
$ docker images
certbot/certbot                  latest              5b0ca44bb717        48 minutes ago      95.7MB
```

Go back to your main directory and clone the Signal Proxy repo. From this step you can follow the instructions on 
https://github.com/signalapp/Signal-TLS-Proxy
