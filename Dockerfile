FROM debian:trixie-slim
RUN apt update
RUN apt install -y net-tools libicu76 libssl3t64 ca-certificates

COPY *.deb /tmp/

RUN dpkg -i /tmp/*.deb && rm /tmp/*.deb

ENTRYPOINT ["/usr/bin/KBV/kv.dox.KIM.Clientmodul/KIM.ClientModul.ApplicationService"]

EXPOSE 465/tcp
EXPOSE 995/tcp
EXPOSE 4443/tcp

VOLUME /usr/bin/KBV/kv.dox.KIM.Clientmodul/ApplicationData
VOLUME /root/.aspnet

LABEL description="Docker Container for kvdox application."
