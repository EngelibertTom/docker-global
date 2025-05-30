FROM prestashop/prestashop:latest

ENV DB_SERVER=db
ENV DB_USER=user
ENV DB_PASSWORD=password
ENV DB_NAME=prestashop
ENV PS_LANGUAGE=fr
ENV PS_COUNTRY=FR

WORKDIR /var/www/html

EXPOSE 80
