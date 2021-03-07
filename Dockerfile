FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential
#ENV BUNDLER_VERSION=1.3.0
RUN mkdir -p /usr/src/consentimientos
WORKDIR /usr/src/consentimientos
COPY Gemfile /usr/src/consentimientos/Gemfile
COPY Gemfile.lock /usr/src/consentimientos/Gemfile.lock
RUN bundle install
ADD . /usr/src/consentimientos

#CMD RAILS_ENV=${RAILS_ENV} bundle exec rake db:create db:migrate db:fixture:load && bundle exec rails s -p ${PORT} -b '0.0.0.0'


RUN RAILS_ENV=development bundle exec rake assets:precompile --trace
