FROM ubuntu
RUN apt-get update &&\
    apt-get install -y kea-ctrl-agent kea-dhcp4-server &&\
    apt-get clean autoclean &&\
    apt-get autoremove --yes &&\
    rm -rf /var/lib/{apt,dpkg,cache,log}/

WORKDIR /kea-ctrl
COPY *.json /kea-ctrl/
COPY entrypoint.sh /kea-ctrl/entrypoint.sh
RUN chmod +x entrypoint.sh
RUN mkdir /run/kea
EXPOSE 8000
CMD [ "/bin/bash", "/kea-ctrl/entrypoint.sh" ]
