# PHP Docker

## Supported PHP versions:
- 8.4 ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.4-fpm), [cli](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.4-fpm)) - latest ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=latest))
- 8.3 ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.3-fpm), [cli](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.3-cli))
- 8.2 ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.2-fpm), [cli](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.2-cli))
- 8.1 ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.1-fpm), [cli](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.1-cli))
- 8.0 ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.0-fpm), [cli](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.0-cli))
- 7.4 ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=7.4-fpm), [cli](https://github.com/faytranevozter/php/pkgs/container/php?tag=7.4-cli))

## Custom Images:
- 8.3 ([fpm](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.3-fpm-mongo), [cli](https://github.com/faytranevozter/php/pkgs/container/php?tag=8.3-cli-mongo)) - MongoDB

## Default extensions:
This extensions below are enabled by default (`php -m`)

| Extension      | Extension      | Extension      |
|----------------|----------------|----------------|
| bcmath         | Core           | ctype          |
| curl           | date           | dom            |
| exif           | fileinfo       | filter         |
| gd             | gettext        | hash           |
| iconv          | json           | libxml         |
| mbstring       | mysqlnd        | openssl        |
| pcre           | PDO            | pdo_mysql      |
| pdo_sqlite     | Phar           | posix          |
| random         | readline       | Reflection     |
| session        | SimpleXML      | sodium         |
| SPL            | sqlite3        | standard       |
| tokenizer      | xml            | xmlreader      |
| xmlwriter      | Zend OPcache   | zip            |
| zlib           |                |                |


## Custom Image
You can create your custom image by extending this image and adding your custom configurations.

```Dockerfile
FROM ghcr.io/faytranevozter/php:8.4-fpm

# Add extra extensions
RUN docker-php-ext-install pdo_pgsql
```