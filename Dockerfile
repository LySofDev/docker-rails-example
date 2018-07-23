FROM starefossen/ruby-node:2-8-alpine
RUN apk update && \
    apk add nano build-base postgresql-dev && \
    gem install bundler
RUN mkdir /project
COPY Gemfile Gemfile.lock /project/
WORKDIR /project
RUN bundle install
COPY . /project
