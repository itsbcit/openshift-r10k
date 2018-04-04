FROM bcit/alpine

ENV RUNUSER r10k
ENV HOME /home/r10k

COPY 50-home.sh /docker-entrypoint.d/

RUN mkdir -p /etc/puppetlabs/code \
 && chown 0:0 /etc/puppetlabs/code \
 && chmod 775 /etc/puppetlabs/code
VOLUME /etc/puppetlabs/code

RUN apk add --no-cache \
        git \
        ruby-json \
        ruby

RUN gem install --no-ri --no-rdoc \
        r10k

RUN chown 0:0 /home && chmod 1777 /home

CMD [ "tail", "-f", "/dev/null" ]
