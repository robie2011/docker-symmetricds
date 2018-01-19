FROM openjdk:9.0-jre
ENV url_jarsetup http://www.jumpmind.com/downloads/symmetricds/releases/3.9/symmetric-pro-3.9.2-setup.jar
ENV url_autoinstall https://pastebin.com/raw/ic1bNzq0
RUN apt-get update && apt-get install wget nano less -y
ADD setup.sh /opt/setup.sh
RUN chmod +x /opt/setup.sh
CMD "/opt/setup.sh"

# docker build -t testimage01 .
# docker run --rm -it -e "url_jarsetup=http://172.17.0.2/index.php/s/d5TFlBN8PLlmKb0/download" testimage01
