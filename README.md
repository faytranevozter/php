# PHP Docker

## Supported PHP versions:
- 8.4 (fpm, cli) - latest (fpm)
- 8.3 (fpm, cli)
- 8.2 (fpm, cli)
- 8.1 (fpm, cli)
- 8.0 (fpm, cli)
- 7.4 (fpm, cli)

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