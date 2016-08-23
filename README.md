# docker
Docker containers based mainly on Alpine Linux:

## min-java
Alpine Linux with Firefox, JRE 1.8 (OpenJDK) and Mozilla Java Plugin (icedtea)
a. Java policy file to enable copy paste operations in Java applets.
b. SSH server with enabled root login and X11 forwarding.

### Running a Firefox
1. Attach an IP address to local interface (lo0) of hosting machine:
	```shell
	sudo ifconfig lo0 alias 172.16.123.1
	```
1. Run the container:
	```shell
	./startAlpine.sh
	```
1. Run a Firefox on your Xserver:
	```shell
	./runFirefox.sh
	```	
	
You can connect to the container either using ssh:
```shell
ssh -X root@localhost -p 922 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
```	
or normally attaching to the container:
```shell
docker attach minjava
```
