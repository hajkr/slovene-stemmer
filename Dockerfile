FROM ruby:2.7.2

ENV APP_HOME /app
ENV HOME /root

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile* $APP_HOME/
COPY . $APP_HOME/
RUN ls -la
COPY slovene_stemmer.gemspec* $APP_HOME/
RUN bundle install

COPY . $APP_HOME