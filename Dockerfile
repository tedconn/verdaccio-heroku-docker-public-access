FROM verdaccio/verdaccio:4

USER root

ENV NODE_ENV=production

RUN yarn

COPY ./config.yaml /verdaccio/conf

USER verdaccio

CMD $VERDACCIO_APPDIR/bin/verdaccio --config /verdaccio/conf/config.yaml --listen $VERDACCIO_PROTOCOL://0.0.0.0:$PORT
