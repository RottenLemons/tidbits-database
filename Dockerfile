FROM postgres

ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_USER=postgres
ENV POSTGRES_DB=postgres

COPY create_tables.sql /docker-entrypoint-initdb.d/
COPY populate_tables.sql /docker-entrypoint-initdb.d/

EXPOSE 5432