FROM haskell:latest
RUN cabal update && \
    cabal install mmark-cli
ENTRYPOINT ["/root/.cabal/bin/mmark"]
LABEL io.whalebrew.config.keep_container_user 'true'
