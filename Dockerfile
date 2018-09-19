From alpine:latest

RUN apk --update add git make g++&& \
    rm -rf /var/cache/apk/*

WORKDIR /root
RUN git clone https://github.com/taku910/mecab.git && \
    cd mecab/mecab && \
    ./configure --with-charset=utf8 && \
    make && \
    make install && \
    cd ../mecab-ipadic && \
    ./configure --with-charset=utf8 && \
    make && \
    make install && \
    cd ../.. && \
    rm -r mecab