# OXITweb

Základní web postavený na ***oxit/oxitweb-core***

## Instalace projektu
```shell
composer install &&
yarn &&
yarn build
```


## Update oxit/oxitweb-core
```shell
composer update oxit/oxitweb-core
```

## Update oxit/oxitweb-core SE ZÁVISLOSTMI !!!
```shell
composer update oxit/oxitweb-core -W
```


## Migrace - spuštění
```shell
rm -rf temp/cache && php bin/console migrations:continue
```

## Zkompiluje a minifikuje scss a js
```shell
gulp compile
```

## Spuštění Gulpu pro sledování .latte a kompilaci scss,js (režim app)
```shell
gulp watch
```

## Spuštění Gulpu pro sledování .html a kompilaci scss,js (režim šablony)
```shell
gulp watch --folder gulp
```
