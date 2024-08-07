FROM bitnami/dotnet:8.0.7
WORKDIR /home/
COPY ./net8.0 ./net8.0
COPY ./configNginx.conf /etc/nginx/sites-available/
COPY ./configContainer.sh .
COPY ./packages-microsoft-prod.deb .
COPY ./pg_hba.conf .
COPY ./wwwroot /var/www/wwwroot
EXPOSE 5000
EXPOSE 80
RUN dpkg -i ./packages-microsoft-prod.deb
RUN rm ./packages-microsoft-prod.deb
RUN apt update
RUN apt install nginx -y
RUN apt install aspnetcore-runtime-8.0 -y
RUN apt install postgresql-15 -y
#RUN service postgresql start
#RUN service nginx start
CMD ["bash", "/home/configContainer.sh"]
