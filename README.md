# Awesome Crystal [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) [![Build Status](https://travis-ci.org/veelenga/awesome-crystal.svg)](https://travis-ci.org/veelenga/awesome-crystal)

A curated list of awesome Crystal code and resources. Inspired by [awesome](https://github.com/sindresorhus/awesome) and [awesome-awesomeness](https://github.com/bayandin/awesome-awesomeness).

The goal is to have projects mostly stable and useful for users.

Contributions are welcome. Please take a quick look at the [contribution guidelines](https://github.com/veelenga/awesome-crystal/blob/master/CONTRIBUTING.md) first.

* [Awesome Crystal](#awesome-crystal)
  * [Caching](#caching)
  * [Cli Builders](#cli-builders)
  * [Configuration](#configuration)
  * [Database Drivers](#database-drivers)
  * [Data Generators](#data-generators)
  * [Environment Management](#environment-management)
  * [Implementations/Compilers](#implementationscompilers)
  * [HTTP](#http)
  * [Misc](#misc)
  * [Multimedia](#multimedia)
  * [Networking](#networking)
  * [ORM/ODM Extensions](#ormodm-extensions)
  * [Package Management](#package-management)
  * [Project generators](#project-generators)
  * [Search](#search)
  * [Security](#security)
  * [Testing](#testing)
  * [Template Engine](#template-engine)
  * [Third-party APIs](#third-party-apis)
  * [Virtualization](#virtualization)
  * [Web Frameworks](#web-frameworks)
  * [Web Servers](#web-servers)
* [Community](#community)
* [Resources](#resources)
* [Services and Apps](#services-and-apps)
* [Tools](#tools)
  * [Editor Plugins](#editor-plugins)

## Caching
 * [crystal-memcached](https://github.com/comandeo/crystal-memcached) - Implementation of a memcached client

## Cli Builders
 * [clik](https://github.com/trans/clik) - Easy command line interfaces for Crystal

## Configuration
 * [crystal-toml](https://github.com/manastech/crystal-toml) - A TOML parser for Crystal

## Data Generators
 * [random.cr](https://github.com/scidom/random.cr) - Random number generation, provides interface for the [SIMD-oriented Fast Mersenne Twister (dSFMT)](http://www.math.sci.hiroshima-u.ac.jp/~%20m-mat/MT/SFMT/index.html)

## Environment Management
 * [crenv](https://github.com/pine613/crenv) - Crystal version manager

## Database Drivers
 * [crystal-mysql](https://github.com/waterlink/crystal-mysql) - Basic MySQL bindings for Crystal
 * [crystal-pg](https://github.com/will/crystal-pg) - A Postgres driver
 * [crystal-redis](https://github.com/stefanwille/crystal-redis) - Full featured Redis client for Crystal
 * [crystal-sqlite3](https://github.com/manastech/crystal-sqlite3) - SQLite3 bindings for Crystal
 * [mongo.cr](https://github.com/datanoise/mongo.cr) - Binding for MongoDB C Driver

## Implementations/Compilers
 * [crisp](https://github.com/rhysd/Crisp) - Lisp dialect implemented with Crystal
 * [crystal](https://github.com/manastech/crystal) - Crystal itself is written in Crystal

## HTTP
 * [crul](https://github.com/porras/crul) - Command line HTTP client
 * [cryload](https://github.com/Sdogruyol/cryload) - HTTP benchmarking tool written in Crystal
 * [crystal-routing](https://github.com/bcardiff/crystal-routing) - Extensible library to deal with http request and string based routing
 * [http_parser.cr](https://github.com/kostya/http_parser.cr) - Wrapper for [Http Parser lib](https://github.com/joyent/http-parser)

## Misc
 * [artanis](https://github.com/ysbaddaden/artanis) - Sinatra-like DSL for the Crystal language (abusing macros)
 * [bson.cr](https://github.com/jeromegn/bson.cr) - Wrapper around libbson with a nice API
 * [crystal-futures](https://github.com/dhruvrajvanshi/crystal-futures) - Future type implementation for Crystal language
 * [crystalline](https://github.com/jtomschroeder/crystalline) - A collection of containers and algorithms for the Crystal language
 * [emoji.cr](https://github.com/veelenga/emoji.cr) - Emoji library for Crystal
 * [evented](https://github.com/krisleech/evented) - A micro library to publish and subscribe for Crystal objects

## Multimedia
 * [crsfml](https://github.com/BlaXpirit/crsfml) - Crystal bindings to [Simple and Fast Multimedia Library](http://www.sfml-dev.org/) (through CSFML)

## Networking
 * [amqp.cr](https://github.com/datanoise/amqp.cr) - AMQP 0.9.1 client with RabbitMQ extensions
 * [ssh2.cr](https://github.com/datanoise/ssh2.cr) - Library that provides binding for libssh2 library

## ORM/ODM Extensions
 * [active_record.cr](https://github.com/waterlink/active_record.cr) - Active Record pattern implementation for Crystal

## Package Management
 * [shards](https://github.com/ysbaddaden/shards) - Dependency manager for the Crystal

## Project generators
 * [generate](https://github.com/generate-cr/generate) - A tool for generating whole Crystal project structure, or any part of it during lifetime of project

## Search
 * [stretchy](https://github.com/samsheff/Stretchy) - Elasticsearch client for Crystal

## Security
 * [openssl.cr](https://github.com/datanoise/openssl.cr) - Bindings for OpenSSL library

## Testing
 * [minitest.cr](https://github.com/ysbaddaden/minitest.cr) - Library for unit tests and assertions for Crystal
 * [mocks.cr](https://github.com/waterlink/mocks.cr) - Mocking library for Crystal
 * [power_assert.cr](https://github.com/rosylilly/power_assert.cr) - Powerful assertion for Crystal
 * [spec2.cr](https://github.com/waterlink/spec2.cr) - Enhanced testing library for Crystal
 * [timecop.cr](https://github.com/waterlink/timecop.cr) - Library for mocking with `Time.now`. Inspired by [timecop ruby gem](https://github.com/travisjeffery/timecop)
 * [webmock.cr](https://github.com/manastech/webmock.cr) - Library for stubbing `HTTP::Client` requests

## Template Engine
  * [Bunny](https://github.com/samsheff/Bunny) - A simple HTML templating language for Crystal, same syntax as erb
  * [crustache](https://github.com/MakeNowJust/crustache) - [{{Mustache}}](https://mustache.github.io) for Crystal

## Third-party APIs
 * [airbrake-crystal](https://github.com/kyrylo/airbrake-crystal) - A Crystal notifier for [Airbrake](https://airbrake.io)
 * [crystal_brium](https://github.com/manastech/crystal_brium) - Access Brium's API using Crystal
 * [crystal_slack](https://github.com/manastech/crystal_slack) - A tool that parses Slack slash commands or send incoming web hooks
 * [soundcloud-crystal](https://github.com/sferik/soundcloud-crystal) - A library to access the SoundCloud API
 * [twitter-crystal](https://github.com/sferik/twitter-crystal) - A library to access the Twitter API
 * [zlib.cr](https://github.com/datanoise/zlib.cr) - API to handle Zlib Deflate/Inflate stream and GZFile API

## Virtualization
 * [rcpu](https://github.com/ddfreyne/rcpu) - A virtual machine emulator and assembler

## Web Frameworks
 * [amatista](https://github.com/werner/amatista) - A web framework to create quick applications
 * [amethyst](https://github.com/Codcore/Amethyst) - A Rails inspired web-framework for Crystal language
 * [frank](https://github.com/manastech/frank) - A small Sinatra clone for Crystal
 * [moonshine](https://github.com/dhruvrajvanshi/Moonshine) - A minimal web framework

## Web Servers
 * [prax.cr](https://github.com/ysbaddaden/prax.cr) - Rack proxy server for development

# Community
 * [Crystal Shards on Twitter](https://twitter.com/shardscrystal)
 * [Google Group](https://groups.google.com/forum/?fromgroups#!forum/crystal-lang)
 * [Reddit](https://www.reddit.com/domain/crystal-lang.org/)
 * [Slack Group](http://crystal.pine.moe/en/)
 * [Stackoverflow](http://stackoverflow.com/tags/crystal-lang/info)

# Resources
 * [crystal-lang](http://crystal-lang.org) - official language site

# Services and Apps
 * [carc.in](http://carc.in/) - A web service that runs your code and displays the result
 * [crystalshards](https://crystalshards.herokuapp.com/) - A web service that lists all available Crystal shards
 * [DeBot](https://github.com/jhass/DeBot) - IRC bot written in Crystal
 * [docrystal](http://www.docrystal.org) - A web application that hosts documentation for Crystal packages

# Tools

## Editor Plugins
 * Atom
   * [language-crystal-actual](https://atom.io/packages/language-crystal-actual) - Crystal language support in Atom
   * [linter-crystal](https://atom.io/packages/linter-crystal) - lint Crystal using the Crystal compiler in Atom
 * Emacs
   * [emacs-crystal-mode](https://github.com/jpellerin/emacs-crystal-mode) - Crystal language support for Emacs
 * Sublime
   * [sublime-crystal](https://github.com/manastech/sublime-crystal) - Crystal syntax highlighting for Sublime Text
 * Vim
   * [vim-crystal](https://github.com/rhysd/vim-crystal) - vim filetype support for Crystal
