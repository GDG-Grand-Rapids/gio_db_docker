FROM postgres:9.4.5
COPY ./sql/* /docker-entrypoint-initdb.d
ENV POSTGRES_PASSWORD=carlus POSTGRES_DB=gio POSTGRES_USER=gdg_admin
