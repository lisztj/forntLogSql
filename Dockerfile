FROM mysql:5.6.37

ENV TZ "Asia/Shangehai"
ENV MYSQL_ROOT_PASSWORD=123456
ENV MYSQL_DATABASE=log

#将所需文件放到容器中
ADD logcreateTable.sql /docker-entrypoint-initdb.d/
# COPY logcreateTable.sql /mysql/logcreateTable.sql
# COPY privileges.sql /mysql/privileges.sql

#设置容器启动时执行的命令 
EXPOSE 3306
CMD ["mysqld"]