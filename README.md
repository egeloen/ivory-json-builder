# README

[![Travis Build Status](https://secure.travis-ci.org/egeloen/ivory-json-builder.png?branch=master)](http://travis-ci.org/egeloen/ivory-json-builder)
[![AppVeyor Build status](https://ci.appveyor.com/api/projects/status/9f6s2ya7cxaamm20/branch/master?svg=true)](https://ci.appveyor.com/project/egeloen/ivory-json-builder/branch/master)
[![Code Coverage](https://scrutinizer-ci.com/g/egeloen/ivory-json-builder/badges/coverage.png?b=master)](https://scrutinizer-ci.com/g/egeloen/ivory-json-builder/?branch=master)
[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/egeloen/ivory-json-builder/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/egeloen/ivory-json-builder/?branch=master)
[![Dependency Status](https://www.versioneye.com/php/egeloen:json-builder/badge.svg)](https://www.versioneye.com/php/egeloen:json-builder)

[![Latest Stable Version](https://poser.pugx.org/egeloen/json-builder/v/stable.svg)](https://packagist.org/packages/egeloen/json-builder)
[![Latest Unstable Version](https://poser.pugx.org/egeloen/json-builder/v/unstable.svg)](https://packagist.org/packages/egeloen/json-builder)
[![Total Downloads](https://poser.pugx.org/egeloen/json-builder/downloads.svg)](https://packagist.org/packages/egeloen/json-builder)
[![License](https://poser.pugx.org/egeloen/json-builder/license.svg)](https://packagist.org/packages/egeloen/json-builder)

The Ivory JSON builder is a PHP 5.6+ library allowing you to build your JSON through the Symfony2
[PropertyAccess](http://symfony.com/doc/current/components/property_access/index.html) component while keeping the
control of the value escaping.

``` php
use Ivory\JsonBuilder\JsonBuilder;

$builder = new JsonBuilder();
$json = $builder
    ->setValues(array('foo' => array('bar')))
    ->setValue('[baz]', 'bat', false)
    ->build();

// {"foo":["bar"],"baz":bat}
echo $json;
```

## Documentation

 1. [Installation](/doc/installation.md)
 2. [Usage](/doc/usage.md)

## Testing

The library is fully unit tested by [PHPUnit](http://www.phpunit.de/) with a code coverage close to **100%**. To
execute the test suite, check the travis [configuration](/.travis.yml).

## Contribution

We love contributors! Ivory is an open source project. If you'd like to contribute, feel free to propose a PR! You
can follow the [CONTRIBUTING](/CONTRIBUTING.md) file which will explain you how to set up the project.

## License

The Ivory JSON Builder is under the MIT license. For the full copyright and license information, please read the
[LICENSE](/LICENSE) file that was distributed with this source code.
