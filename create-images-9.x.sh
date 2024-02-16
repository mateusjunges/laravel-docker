#!/usr/bin/env bash

for PHP_VERSION in "8.3"
do
    for LIBRDKAFKA_VERSION in "v1.8.2"
    do
        for EXT_RDKAFKA_VERSION in "6.0.0"
        do
            for LARAVEL_VERSION in "9"
            do
                TAG=${PHP_VERSION}-${LIBRDKAFKA_VERSION}-${EXT_RDKAFKA_VERSION}-${LARAVEL_VERSION}

                docker build --tag \
                    mateusjunges/laravel:${TAG} \
                    --build-arg PHP_VERSION=${PHP_VERSION} \
                    --build-arg LIBRDKAFKA_VERSION=${LIBRDKAFKA_VERSION} \
                    --build-arg EXT_RDKAFKA_VERSION=${EXT_RDKAFKA_VERSION} \
                    --build-arg LARAVEL_VERSION=${LARAVEL_VERSION} \
                    .

                docker push mateusjunges/laravel:${TAG}
            done
        done
    done
done
