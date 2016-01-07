FROM alpine:3.3
MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update tzdata postgrey && cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && echo "Europe/Berlin" > /etc/timezone && rm -rf /var/cache/apk/*

CMD ["postgrey", "--inet", "0.0.0.0:10023", "--delay", "50", "--user", "postfix", "--group", "postgrey"]
