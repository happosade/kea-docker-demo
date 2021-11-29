FROM ubuntu
RUN apt-get update &&\
    apt-get install -y kea-dhcp4-server &&\
    apt-get clean autoclean &&\
    apt-get autoremove --yes &&\
    rm -rf /var/lib/{apt,dpkg,cache,log}/

RUN mkdir /run/kea

WORKDIR /kea-dhcp
COPY kea-dhcp4.json /kea-dhcp/kea-dhcp4.json
COPY entrypoint.sh /kea-dhcp/entrypoint.sh
EXPOSE 67
CMD [ "/bin/bash", "/kea-dhcp/entrypoint.sh" ]
