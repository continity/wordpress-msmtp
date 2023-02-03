FROM wordpress:latest

# Install msmtp for mail forwarding to another SMTP server
# /etc/msmtprc configuration file needs to be mapped into the container

RUN apt-get update --fix-missing && \
    apt-get install -y msmtp --no-install-recommends && \
    apt-get clean && \
    ln -s /usr/bin/msmtp /usr/sbin/sendmail
