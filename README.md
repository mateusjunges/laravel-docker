# Laravel Docker Image
This image is used to test [`mateusjunges/laravel-kafka` package](https://github.com/mateusjunges/laravel-kafka).

## Build
To build this image, you can use this command:

```
docker build --build-arg PHP_VERSION=8.3 --build-arg LIBRDKAFKA_VERSION=v1.8.2 --build-arg EXT_RDKAFKA_VERSION=6.0.0 --build-arg LARAVEL_VERSION=10 .
```

You may also use the `create-image-9.x.sh` and `create-images-10.x.sh` scripts to generate all available images.