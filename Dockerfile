FROM alpine:3.2

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update postgrey &&\
    rm -rf /var/cache/apk/*

CMD ["postgrey", "--inet", "0.0.0.0:10023", "--delay", "50", "--user", "postfix", "--group", "postgrey"]
