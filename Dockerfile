FROM alpine:3.5

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update postgrey &&\
    cpan -i NetAddr::IP &&\
    rm -rf /var/cache/apk/*

CMD ["postgrey", "--inet", "0.0.0.0:10023", "--delay", "50", "--user", "postfix", "--group", "postgrey"]
