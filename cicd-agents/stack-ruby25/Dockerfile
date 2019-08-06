FROM gocd/gocd-agent-alpine-3.8:v19.1.0

ENV NOKOGIRI_USE_SYSTEM_LIBRARIES=1

RUN apk update \
&& apk add ruby \
           ruby-bigdecimal \
           ruby-bundler \
           ruby-io-console \
           ruby-irb \
           ca-certificates \
           libressl \
           less \
&& apk add --virtual build-dependencies \
           build-base \
           ruby-dev \
           libressl-dev \
\
&& bundle config build.nokogiri --use-system-libraries \
&& bundle config git.allow_insecure true \
&& gem install json bundler --no-rdoc --no-ri \
\
&& gem cleanup \
&& rm -rf /usr/lib/ruby/gems/*/cache/* \
          /var/cache/apk/* \
          /tmp/* \
          /var/tmp/*

# Javascript runtime: therubyracer

RUN gem install --no-rdoc --no-ri rake
