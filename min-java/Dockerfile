# Alpine Linux with Firefox, JRE 1.8 and Mozilla Java Plugin
# @author michal.grabarczyk@gmail.com
# a. Java policy file to enable copy paste operations.
# b. SSH server with enabled root login and X11 forwarding.

FROM alpine:3.4
RUN apk --update add --no-cache openssh xauth dbus ttf-freefont firefox-esr openjdk8-jre icedtea-web icedtea-web-mozilla
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -q -N "" && \
	echo "X11Forwarding yes" >> /etc/ssh/sshd_config && \
	echo "HostKey /etc/ssh/ssh_host_rsa_key" >> /etc/ssh/sshd_config && \
	echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
	echo 'root:abc123' |chpasswd && \
	echo "grant {" >> ~/.java.policy && \
	echo "permission java.awt.AWTPermission \"accessClipboard\";" >> ~/.java.policy && \
	echo "};" >> ~/.java.policy
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
# openjdk7-jre firefox-esr
#CMD ["/usr/bin/java", "-version"]