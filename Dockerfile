FROM debian:bookworm
RUN apt update
RUN apt install -y net-tools libicu72 libssl3 ca-certificates

COPY *.deb /tmp/

RUN dpkg -i /tmp/*.deb && rm /tmp/*.deb

ENTRYPOINT ["/usr/bin/KBV/kv.dox.KIM.Clientmodul/KIM.ClientModul.ApplicationService"]

EXPOSE 465/tcp
EXPOSE 995/tcp
EXPOSE 4443/tcp

LABEL description="Docker Container for kvdox application."
