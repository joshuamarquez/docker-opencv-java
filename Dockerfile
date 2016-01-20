FROM ubuntu:15.10

MAINTAINER Joshua Marquez "joshua.marquez.n@gmail.com"

COPY install.sh install.sh
RUN chmod +x install.sh && sync && ./install.sh && rm install.sh

VOLUME /gen
WORKDIR /gen
CMD bash
