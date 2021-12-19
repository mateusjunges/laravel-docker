# Laravel Docker Image
This image is used to test [`mateusjunges/laravel-kafka` package](https://github.com/mateusjunges/laravel-kafka).

## Build
To build this image, you can use this command:

```
docker build --build-arg PHP_VERSION=8.1 --build-arg LIBRDKAFKA_VERSION=v1.8.2 --build-arg EXT_RDKAFKA_VERSION=5.0.2 --build-arg LARAVEL_VERSION=8 .
```