FROM bcit/alpine

ENV RUNUSER r10k
ENV HOME /home/r10k

COPY 50-home.sh /docker-entrypoint.d/

RUN apk add --no-cache \
        git \
        ruby

RUN gem install --no-ri --no-rdoc \
        r10k

RUN chown 0:0 /home && chmod 1777 /home

CMD [ "tail", "-f", "/dev/null" ]
