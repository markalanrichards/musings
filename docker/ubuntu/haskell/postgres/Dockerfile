FROM haskelldev
RUN ["/bin/bash", "-c", "source /etc/profile && apt-get install postgresql postgresql-contrib -y"]
RUN service postgresql start && sudo -u postgres psql --command "CREATE USER docker WITH SUPERUSER PASSWORD 'docker';" && sudo -u postgres createdb -O docker docker && service postgresql stop
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.3/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf


