# FROM ubuntu:20.04
FROM ruby:2.7.2

ENV PORT 3000
ENV RAILS_ROOT /var/www/app/

# RUN apt-get remove --purge nodejs npm
RUN apt-get clean
RUN apt-get autoclean
RUN apt-get install -f
RUN apt-get autoremove

RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -

RUN apt-get update && apt-get install -y nodejs && npm install -g yarn
RUN yarn --version
RUN node --version
RUN npm --version

RUN bundle config --global frozen 1

RUN mkdir -p $RAILS_ROOT
COPY Gemfile* $RAILS_ROOT
WORKDIR $RAILS_ROOT

RUN bundle install
COPY . $RAILS_ROOT
RUN yarn upgrade webpack@^4.0.0 && bundle exec rake assets:precompile

EXPOSE $PORT

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
