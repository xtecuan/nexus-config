FROM sonatype/nexus3

USER root
COPY scripts-certs/*.sh /opt/sonatype/nexus/bin
RUN chmod a+x /opt/sonatype/nexus/bin/*.sh
RUN /opt/sonatype/nexus/bin/generateKeystore.sh
COPY config/nexus.properties /opt/sonatype/sonatype-work/nexus3/etc/
RUN ls /opt/sonatype/sonatype-work/nexus3/etc/
COPY config/jetty-https.xml /opt/sonatype/nexus/etc/jetty/
RUN mkdir -p /data/nexus-blobs
RUN mkdir -p /opt/sonatype/sonatype-work/nexus3/etc/ssl/
RUN ls /opt/sonatype/nexus/etc/ssl/
#RUN ls /opt/sonatype/sonatype-work/nexus3/etc/ssl/
#RUN cp /opt/sonatype/nexus/etc/ssl/keystore.jks /opt/sonatype/sonatype-work/nexus3/etc/ssl/

EXPOSE 8081
EXPOSE 8443
