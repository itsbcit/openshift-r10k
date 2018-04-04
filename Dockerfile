FROM bcit/alpine

ENV TINI_SUBREAPER ""
ENV RUNUSER r10k
ENV HOME /

RUN mkdir -p  /etc/puppetlabs/code /var/lib/r10k /var/lib/r10k/cache \
 && chown 0:0 /etc/puppetlabs/code /var/lib/r10k /var/lib/r10k/cache \
 && chmod 775 /etc/puppetlabs/code /var/lib/r10k /var/lib/r10k/cache
VOLUME /etc/puppetlabs/code
VOLUME /var/lib/r10k/cache

RUN apk add --no-cache \
        git \
        openssh-client \
        ruby-json \
        ruby

RUN gem install --no-ri --no-rdoc \
        r10k

RUN chown 0:0 /home && chmod 1777 /home

CMD [ "tail", "-f", "/dev/null" ]
