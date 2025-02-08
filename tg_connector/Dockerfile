ARG BUILD_FROM
FROM $BUILD_FROM

# Installs
RUN \
    apk add --no-cache docker=27.3.1-r1

# Set working directory to our add-on persistent data directory.
WORKDIR /data

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]