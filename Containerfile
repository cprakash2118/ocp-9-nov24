 FROM ubi8/ubi:8.3

 MAINTAINER Your Name  <_youremail_>

 LABEL description="A custom Apache container based on UBI 8"

 RUN yum install -y httpd && \

    yum clean all

 EXPOSE 80

 RUN echo "Hello from Containerfile" > /var/www/html/index.html

 CMD ["httpd", "-D", "FOREGROUND"]
