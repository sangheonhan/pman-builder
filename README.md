# Pman Builder

This is builder for man files of [`pman`](https://github.com/sangheonhan/pman-php-manual).

1. You need make Docker container images first.

   ```bash
   docker build .
   docker tag <IMAGE_ID> pman-builder:latest
   ```

1. Run `docker-compose`

   ```bash
   docker-compose up
   ```

1. Copy man files.

   ```bash
   cp -a ./php-functions/*.gz <MAN_DIR_IN_YOUR_PMAN_DIRECTORY>/
   ```
