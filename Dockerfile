FROM google/cloud-sdk

RUN git clone https://github.com/elreydetoda/feedsanitizer.git /app

RUN apt-get update && \
        apt-get install -y bsdtar

RUN curl -fsSo /tmp/google_appengine_1.9.91.zip 'https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.91.zip' && \
        bsdtar -xvf /tmp/google_appengine_1.9.91.zip --strip-components=1 -C /usr/local/bin/

WORKDIR /app

ENTRYPOINT [ "./entrypoint.sh" ]
