FROM ubuntu:trusty

COPY pdfsandwich_0.1.6_amd64.deb /tmp

RUN apt-get update -y && \
    apt-get install -y tesseract-ocr unpaper exactimage imagemagick poppler-utils ghostscript

RUN cd /tmp && \
    dpkg -i pdfsandwich_0.1.6_amd64.deb && \
    apt-get -fy install

WORKDIR /root

CMD ['/usr/bin/pdfsandwich', '-nthreads', '1']
