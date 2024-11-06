FROM ghcr.io/faytranevozter/php:8.3-fpm-alpine

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions grpc \
    && docker-php-ext-enable grpc
