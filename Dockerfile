#
# THIS FILE IS GENERATED.  DO NOT EDIT.
#


# Dockerfile Header for template/test

FROM alpine:latest
LABEL maintainer "Your Name <address@your.domain>"

WORKDIR /container/template/test
#
# Application
#

COPY app ./app

# Don't need this.
RUN rm -f ./app/Dockerfile

# This may get changed if anyting is included later
ENTRYPOINT ["./app/run"]


#
# THE END 
#
