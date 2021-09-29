FROM ubuntu:20.10

ENV DEBIAN_FRONTEND=noninteractive

COPY . /system/gogs
RUN chmod 777 /system/gogs/*.sh /system/gogs/assests/*.sh
RUN /system/gogs/build.sh

EXPOSE 3000
CMD ["/system/gogs/deploy.sh"]
