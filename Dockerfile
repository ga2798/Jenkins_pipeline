From ubuntu
Maintainer gaurav
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
RUN apt install unzip -y
RUN apt install zip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/cryptop.zip /var/www/html
WORKDIR /var/www/html
RUN unzip cryptop.zip
RUN cp -rvf cryptop-html/* .
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]