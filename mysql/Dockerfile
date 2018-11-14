FROM mysql:5.7

ADD my.cnf /etc/mysql/conf.d/my.cnf

RUN chown -R mysql:root /var/lib/mysql/

ENV MYSQL_DATABASE=partymaker
ENV MYSQL_USER=backend
ENV MYSQL_PASSWORD=incode2015
ENV MYSQL_ROOT_PASSWORD=incode2015

RUN /etc/init.d/mysql start &&  mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE partymaker CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"
CMD ["mysqld"]
EXPOSE 3306
