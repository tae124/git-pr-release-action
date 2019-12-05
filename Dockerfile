FROM ruby:2.5.7-alpine3.10

RUN apk add --no-cache git
RUN gem install git-pr-release -v "0.8.0"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
