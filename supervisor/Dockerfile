#
# Supervisord
#
# Include this last so it overrides anything else.
#

RUN apk add supervisor

COPY supervisor supervisor

# Don't need this.
RUN rm -f supervisor/Dockerfile

# Get rid of these; we're bringing our own.
RUN rm -rf /etc/supervisord.conf /etc/supervisord.d

RUN ln -s $(pwd)/supervisor/supervisord.conf /etc/supervisord.conf
RUN ln -s $(pwd)/supervisor/supervisord.d /etc/supervisord.d

ENTRYPOINT [ "supervisord", "--nodaemon", "--config", "/etc/supervisord.conf" ]
