Consentimientos
================

Ruby on Rails
-------------

Esta aplicación requiere:

- Ruby 2.3.1
- Rails 4.2.6

[Ver cómo instalar](https://gorails.com/setup/ubuntu/)

Una vez instalado rails y sus dependencias:

Crear la base de datos:

Asegurarse de tener un archivo llamado database.yml en config (acá un ejemplo)

config/database.yml
```
  default: &default
    adapter: sqlite3
    pool: 5
    timeout: 5000

  development:
    <<: *default
    database: db/development.sqlite3

  test:
    <<: *default
    database: db/test.sqlite3
```

Luego correr

`rake db:create`

`rake db:migrate`


Finalmente, levantar el servidor con:

`rails s`

-------