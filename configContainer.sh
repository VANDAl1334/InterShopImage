# /bin/bash
rm /etc/nginx/sites-enabled/default
ln -fs /etc/nginx/sites-available/configNginx.conf /etc/nginx/sites-enabled/configNginx.conf
cp -rf /usr/share/dotnet/shared/Microsoft.AspNetCore.App/ /opt/bitnami/dotnet/bin/shared/
cp -f /home/pg_hba.conf /etc/postgresql/15/main/
service postgresql start
service nginx start
/home/net8.0/InterShopAPI
