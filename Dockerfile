FROM stackbrew/ubuntu:13.10
RUN apt-get -qq update
RUN apt-get install -y ruby bundler python
ADD . /code
WORKDIR /code
RUN bundle install
EXPOSE 4000
CMD bundle exec jekyll build --watch