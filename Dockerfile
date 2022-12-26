#syntax=docker/dockerfile:1
FROM ruby:3.1.3-bullseye

RUN apt-get update \
  && apt-get install make \ 
  && gem install rails 


COPY . .

RUN bundle install

EXPOSE 3000

CMD rails s --binding=0.0.0.0

