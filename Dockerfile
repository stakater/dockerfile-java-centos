FROM stakater/centos-base-image

LABEL name="Stakater Java image on CentOS" \    
      maintainer="Stakater <stakater@aurorasolutions.io>" \
      vendor="Stakater" \
      release="1" \
      summary="A Java image based on CentOS" 

USER root 
RUN yum update -y && \
    yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
    yum clean all

USER 10001
# Define working directory.
WORKDIR $HOME

# Define default command.
CMD ["bash"]