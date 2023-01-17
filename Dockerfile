FROM ubuntu:latest

# Install Cloud c2
# create /c2config
WORKDIR /c2config
# create /c2data
WORKDIR /c2data
COPY c2-3.2.0_* ./
COPY install.sh ./
COPY start.sh ./

# Update and install minimum
RUN apt update && \
  apt upgrade -y && \
  apt install ca-certificates -y

RUN ["/bin/sh", "-c", "./install.sh"]

VOLUME /c2config

EXPOSE 80 443

CMD ["./start.sh"]
