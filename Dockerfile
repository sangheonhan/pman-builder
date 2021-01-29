FROM php:7.3-cli

COPY pman-build.sh /pman/
WORKDIR /pman/

RUN apt-get update && \
apt-get install -y subversion && \
pear install --alldeps doc.php.net/PhD && \
pear install --alldeps channel://doc.php.net/PhD_IDE-1.1.1 && \
apt-get clean autoclean && \
apt-get autoremove --yes && \ 
rm -rf /var/lib/{apt,dpkg,cache,log}/
