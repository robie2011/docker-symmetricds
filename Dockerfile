FROM openjdk:9.0-jre
ADD setup.sh /opt/setup.sh
RUN chmod +x /opt/setup.sh

# alternative for faster build time: 
# you can download your preferred symmetricds pro version to symmetricspro_setup folder and reference this file in add statement
ADD symmetricdspro_setup/symmetric-pro-3.9.2-setup.jar /tmp/setup.jar
#ADD http://www.jumpmind.com/downloads/symmetricds/releases/3.9/symmetric-pro-3.9.2-setup.jar /tmp/setup.jar

# NOTE: auto install xml-file may change with versions and can cause auto install failure
ADD symmetric_autoinstall.xml /tmp/install.xml

ADD symmetricds_start.sh /opt/symmetricds_start.sh
RUN chmod +x /opt/symmetricds_start.sh
RUN chmod +x /tmp/setup.jar

RUN /opt/setup.sh
CMD /opt/symmetricds_start.sh