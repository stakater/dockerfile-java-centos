FROM stakater/base-centos:7

LABEL name="Stakater Java image on CentOS" \    
      maintainer="Stakater <stakater@aurorasolutions.io>" \
      vendor="Stakater" \
      release="1" \
      summary="A Java image based on CentOS" 

# Change to user root to install jdk, cant install it with any other user
USER root 
RUN yum update -y && \
    yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
    yum clean all

# Again using non-root user i.e. stakater as set in base image
USER 10001

# Define default command, can be overriden by passing an argument when running the container
CMD ["bash"]