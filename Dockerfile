FROM fedora:latest
MAINTAINER levi@tamisoft.com

WORKDIR /root
COPY create-ibom.sh /bin/
ENV LANG C
ENV LC_ALL C

RUN dnf install -y kicad xorg-x11-server-Xvfb unzip ; \
    rm -rf /var/cache ; \
    curl -L -o kicadibom.zip https://github.com/tamisoft/InteractiveHtmlBom/archive/s3storage.zip ; \
    unzip kicadibom.zip && mv InteractiveHtmlBom-s3storage InteractiveHtmlBom ; \
    chmod +x /bin/create-ibom.sh

ENTRYPOINT ["/bin/create-ibom.sh"]
