FROM ubuntu
MAINTAINER pradeep@gmail.com
RUN apt-get update
RUN apt-get install -y nginx
CMD ["echo","image created-1"]
