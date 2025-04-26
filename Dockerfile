FROM php:8.2-cli
WORKDIR /app
EXPOSE 1337
CMD ["php", "-S", "0.0.0.0:1337", "-t", "/app"]
