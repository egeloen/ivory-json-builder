#!/usr/bin/env bash

set -e

COMPOSER_PREFER_LOWEST=${COMPOSER_PREFER_LOWEST-false}
DOCKER_BUILD=${DOCKER_BUILD-false}
TRAVIS_PHP_VERSION=${TRAVIS_PHP_VERSION-5.6}

if [ "$DOCKER_BUILD" = true ]; then
    cp .env.dist .env

    docker-compose build
    docker-compose run --rm php composer update --prefer-source

    exit
fi

composer self-update
composer remove --no-update --dev friendsofphp/php-cs-fixer
composer update --prefer-source `if [ "$COMPOSER_PREFER_LOWEST" = true ]; then echo "--prefer-lowest --prefer-stable"; fi`
