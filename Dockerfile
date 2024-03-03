ARG FLUENTD_IMAGE_VERSION=v1.16.2-1.1
FROM fluent/fluentd:"$FLUENTD_IMAGE_VERSION"

USER root
WORKDIR /fluentd
COPY Gemfile .
RUN apk add --no-cache --update --virtual .build-deps build-base ruby-dev \
    && bundle install \
    && gem sources --clear-all \
    && apk del .build-deps \
    && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

USER fluent
