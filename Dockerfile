FROM ruby:2.3.8
RUN gem install bundle

COPY Gemfile* /tmp/
WORKDIR /tmp

RUN gem install therubyracer -v '0.12.1'
RUN gem install libv8 -v '3.16.14.5'  -- --with-system-v8
RUN gem install eventmachine -v '1.2.7' -- --with-ldflags="-Wl,-undefined,dynamic_lookup"

RUN bundle config github.https true
RUN bundle install

RUN mkdir /OCN
WORKDIR /OCN
COPY . .
RUN cp /tmp/[Gemfile]* /OCN

# Website role and port variables
ENV RAILS_ENV=production
ENV OCN_BOX=production
ENV WEB_ROLE=octc
ENV WEB_PORT=3000

# Default to running rails with role on build
CMD exec rails $WEB_ROLE -b 0.0.0.0 -p $WEB_PORT

# Load ocn data repository (needs to be in this directory)
VOLUME /minecraft/repo/data