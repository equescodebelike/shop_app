FROM postgres

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

COPY init.sql /docker-entrypoint-initdb.d/