# eLib

[![Build Status](https://travis-ci.org/toshogakari/eLib.svg)](https://travis-ci.org/toshogakari/eLib)
[![Code Climate](https://codeclimate.com/github/toshogakari/eLib/badges/gpa.svg)](https://codeclimate.com/github/toshogakari/eLib)
[![Test Coverage](https://codeclimate.com/github/toshogakari/eLib/badges/coverage.svg)](https://codeclimate.com/github/toshogakari/eLib/coverage)
[![Issue Count](https://codeclimate.com/github/toshogakari/eLib/badges/issue_count.svg)](https://codeclimate.com/github/toshogakari/eLib)
[![Dependency Status](https://gemnasium.com/toshogakari/eLib.svg)](https://gemnasium.com/toshogakari/eLib)

## Installation

```bash
$ git clone git@github.com:toshogakari/eLib.git
$ cd eLib
$ bundle install --without production
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```

## docker(experimental)

on local

```bash
$ docker build -t elib .
$ docker run -it --rm -p 3000:3000 elib
```

<!-- on cloud

```bash
$ docker build -t elib .
$ docker run -it --rm -p 3000:3000 elib
``` -->

## URL

https://engineer-library.herokuapp.com/

## ER Diagrams
https://raw.githubusercontent.com/toshogakari/eLib/master/erd.pdf
