FROM ubuntubase
ADD http://sourceforge.net/projects/netatalk/files/netatalk/3.1.3/netatalk-3.1.3.tar.bz2/download netatalk-3.1.3.tar.bz2
RUN tar xjf /netatalk-3.1.3.tar.bz2
RUN apt-get install avahi-daemon build-essential libssl-dev libgcrypt11-dev libkrb5-dev libpam0g-dev libwrap0-dev libdb-dev libmysqlclient-dev libavahi-client-dev libacl1-dev libldap2-dev libcrack2-dev systemtap-sdt-dev libdbus-1-dev libdbus-glib-1-dev libglib2.0-dev tracker libtracker-sparql-0.16-dev libtracker-miner-0.16-dev -y
RUN cd netatalk-3.1.3 && ./configure --with-init-style=debian --with-cracklib --enable-krbV-uam --with-pam-confdir=/etc/pam.d --with-dbus-sysconf-dir=/etc/dbus-1/system.d --with-tracker-pkgconfig-version=0.16
RUN cd netatalk-3.1.3 && make
RUN cd netatalk-3.1.3 && make install
RUN mkdir -p /export/timemachine /export/test1 /home /var/run/dbus
ADD afpd.conf /usr/local/etc/afpd.conf
ADD afpd.service /etc/avahi/services/afpd.service
ADD netatalkstartup.sh netatalkstartup.sh


