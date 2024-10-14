FROM ruby:3.3.5-alpine3.20

RUN addgroup -S lintergroup && adduser -S linteruser -G lintergroup

RUN gem install mdl

COPY ./ /linter_workdir

RUN chown -R linteruser:lintergroup /linter_workdir

# NOTE: we need to have a separate directory for linter to work only with needed files,
# not with files from the entire system.
WORKDIR /linter_workdir

USER linteruser

HEALTHCHECK --timeout=1s --retries=1 CMD mdl --version || exit 1

ENTRYPOINT ["mdl", "."]