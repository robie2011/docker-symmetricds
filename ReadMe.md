# Symmetric DS Pro Docker Images
This project contains docker images for testing SymmetricDS Pro functinality. Containers uses linux base image.

Project contains:
- 2x MySQL containers
- 2x SymmetricDS Pro containers

container description can be found in compose file `docker-compose.yml`. SymmetricDS Pro license is required.

## Admin Tasks
- build containers: `docker-compose build`` (If changes to Dockerfile was made)
- create and start all containers: `docker-compose up`
- stop and destroy all containers: `docker-compose down`
- stop containers: `docker-compose stop`
- start containers: `docker-compose start`
- note: `/opt/symmetricds_start.sh` will be executed on each container start
- URLS: 
    - Sym Node 0: http://172.16.10.10:31415/app
    - Sym Node 1: http://172.16.10.11:31415/app
- sample db import: `mysql -proot -uroot </data/import.sql`
- sample jdbc connections:
    - db0: `jdbc:mysql://172.16.10.100/sym?tinyInt1isBit=false&zeroDateTimeBehavior=convertToNull`
    - db1: `jdbc:mysql://172.16.10.101/sym?tinyInt1isBit=false&zeroDateTimeBehavior=convertToNull`
- db access: user=password=root

Known Issues:
- It is not possible to access containers over TCP/IP on mac. Workaround: https://github.com/wojas/docker-mac-network