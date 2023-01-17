# Hak5's CloudC2 Docker Image
CloudC2 Docker Image

## Useful Links
[Github Repo](https://github.com/shaunsundDocker/cloudc2.git)

[CloudC2](https://shop.hak5.org/products/c2)

## Deploy
### Run
```
mdkir /<pathtoc2config>
docker run -d -v /<pathtoc2config>:/c2config/ -p 443:443 -p 80:80 cloudc2
### Update Start.sh to enable the HTTPS Command ###

## Required Ports
* 443   HTTPS
* 8080  HTTP
* 80    HTTP
* 2022  SSH