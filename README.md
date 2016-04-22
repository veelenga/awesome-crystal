# Awesome Crystal [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) [![Build Status](https://travis-ci.org/veelenga/awesome-crystal.svg)](https://travis-ci.org/veelenga/awesome-crystal)

A curated list of awesome Crystal code and resources. Inspired by [awesome](https://github.com/sindresorhus/awesome) and [awesome-awesomeness](https://github.com/bayandin/awesome-awesomeness).

The goal is to have projects mostly stable and useful for users.

Contributions are welcome. Please take a quick look at the [contribution guidelines](https://github.com/veelenga/awesome-crystal/blob/master/CONTRIBUTING.md) first.

* [Awesome Crystal](#awesome-crystal)
  * [Api Builders](#api-builders)
  * [Caching](#caching)
  * [Cli Builders](#cli-builders)
  * [Configuration](#configuration)
  * [Data Generators](#data-generators)
  * [Database Drivers](#database-drivers)
  * [Environment Management](#environment-management)
  * [HTTP](#http)
  * [Implementations/Compilers](#implementationscompilers)
  * [Misc](#misc)
  * [Multimedia](#multimedia)
  * [Networking](#networking)
  * [ORM/ODM Extensions](#ormodm-extensions)
  * [Package Management](#package-management)
  * [Project generators](#project-generators)
  * [Search](#search)
  * [Security](#security)
  * [Task management](#task-management)
  * [Template Engine](#template-engine)
  * [Testing](#testing)
  * [Third-party APIs](#third-party-apis)
  * [Virtualization](#virtualization)
  * [Web Frameworks](#web-frameworks)
  * [Web Servers](#web-servers)
* [Community](#community)
* [Resources](#resources)
* [Services and Apps](#services-and-apps)
* [Tools](#tools)
  * [DevOps](#devops)
  * [Editor Plugins](#editor-plugins)

## Api Builders
 * [crystal_api](https://github.com/akwiatkowski/crystal_api) - Simple PostgreSQL REST API with Rails devise-like auth

## Caching
 * [Bloom Filter](https://github.com/greyblake/crystal-bloom_filter) - Implementation of Bloom filter
 * [crystal-memcached](https://github.com/comandeo/crystal-memcached) - Implementation of a memcached client

## Cli Builders
 * [commander](https://github.com/meskyanichi/commander) - Command-line interface builder
 * [completion](https://github.com/f/completion) - Easy command line completion engine
 * [docopt](https://github.com/chenkovsky/docopt.cr) - A [docopt.org](http://docopt.org) port

## Configuration
 * [ambience](https://github.com/vjdhama/ambience) - Simple app configuration using `ENV`.
 * [crystal-toml](https://github.com/manastech/crystal-toml) - TOML parser

## Data Generators
 * [faker](https://github.com/askn/faker) - A library for generating fake data
 * [random.cr](https://github.com/scidom/random.cr) - Random number generation, provides interface for the SIMD-oriented Fast Mersenne Twister (dSFMT)

## Database Drivers
 * [crystal-mysql](https://github.com/waterlink/crystal-mysql) - Basic MySQL bindings
 * [crystal-pg](https://github.com/will/crystal-pg) - A Postgres driver
 * [crystal-redis](https://github.com/stefanwille/crystal-redis) - Full featured Redis client
 * [crystal-sqlite3](https://github.com/manastech/crystal-sqlite3) - SQLite3 bindings
 * [influxdb.cr](https://github.com/jeromegn/influxdb.cr) - InfluxDB driver
 * [mongo.cr](https://github.com/datanoise/mongo.cr) - Binding for MongoDB C driver

## Environment Management
 * [crenv](https://github.com/pine613/crenv) - Crystal version manager

## HTTP
 * [beryl](https://github.com/luislavena/beryl) - Action-focused HTTP routing library
 * [crul](https://github.com/porras/crul) - Command line HTTP client
 * [cryload](https://github.com/Sdogruyol/cryload) - HTTP benchmarking tool
 * [crystal-routing](https://github.com/bcardiff/crystal-routing) - Extensible library to deal with http request and string based routing
 * [helmet](https://github.com/EvanHahn/crystal-helmet) - Set security-related HTTP headers
 * [http_parser.cr](https://github.com/kostya/http_parser.cr) - Wrapper for [Http Parser lib](https://github.com/nodejs/http-parser)
 * [router-simple.cr](https://github.com/karupanerura/router-simple.cr) - Simple path router
 * [session](https://github.com/porras/session.git) - Cookie based sessions in Crystal HTTP applications

## Implementations/Compilers
 * [crisp](https://github.com/rhysd/Crisp) - Lisp dialect implemented with Crystal
 * [crystal](https://github.com/manastech/crystal) - Crystal itself is written in Crystal

## Misc
 * [aasm.cr](https://github.com/veelenga/aasm.cr) - Easy to use finite state machine for Crystal classes
 * [artanis](https://github.com/ysbaddaden/artanis) - Sinatra-like DSL for the Crystal language (abusing macros)
 * [chalk-box](https://github.com/azukiapp/crystal-chalk-box) - Terminal color toolbox, check support and colorized (without String monkey patch)
 * [crdoc](https://github.com/rhysd/crdoc) - CLI tool to search and open documentation
 * [cron_scheduler](https://github.com/kostya/cron_scheduler) - Job scheduler with crontab patterns
 * [crystal-diff](https://github.com/MakeNowJust/crystal-diff) - A Crystal sequence differencing implementation
 * [crystal-futures](https://github.com/dhruvrajvanshi/crystal-futures) - Future type implementation
 * [crystal-i18n](https://github.com/whity/crystal-i18n) - Internationalization library
 * [crystal-mime](https://github.com/spalger/crystal-mime) - Mimetypes for Crystal
 * [crystalline](https://github.com/jtomschroeder/crystalline) - A collection of containers and algorithms
 * [duktape.cr](https://github.com/jessedoyle/duktape.cr) - Bindings for the [Duktape](https://github.com/svaarala/duktape) javascript engine
 * [emoji.cr](https://github.com/veelenga/emoji.cr) - Emoji library
 * [evented](https://github.com/krisleech/evented) - A micro library to publish and subscribe for Crystal objects
 * [guardian](https://github.com/f/guardian) - File change watcher for Crystal and Non-Crystal libs
 * [haikunator](https://github.com/sanata-/haikunator) - Heroku-like random name generator
 * [heap.cr](https://github.com/chenkovsky/heap.cr) - Implementation of head data structure
 * [html_builder](https://github.com/crystal-lang/html_builder) - DSL for creating HTML
 * [immutable](https://github.com/lucaong/immutable) - Implementation of thread-safe, persistent, immutable collections
 * [lambda.cr](https://github.com/f/lambda.cr) - Uniformed function call syntax
 * [primes](https://github.com/dkhofer/primes) - Library for testing if a number is prime and finding its prime factorization
 * [progress](https://github.com/askn/progress) - [==..] Progress bar
 * [spinner](https://github.com/askn/spinner) - Terminal Spinner
 * [syscall.cr](https://github.com/kubo39/syscall.cr) - Raw syscall interface
 * [termbox-crystal](https://github.com/andrewsuzuki/termbox-crystal) - Bindings and extension library for [termbox](https://github.com/nsf/termbox) (terminal UI library)
 * [zlib.cr](https://github.com/datanoise/zlib.cr) - Bindings for ZLib library

## Multimedia
 * [crsfml](https://github.com/BlaXpirit/crsfml) - Crystal bindings to [Simple and Fast Multimedia Library](http://www.sfml-dev.org/) (through CSFML)

## Networking
 * [amqp.cr](https://github.com/datanoise/amqp.cr) - AMQP 0.9.1 client with RabbitMQ extensions
 * [bson.cr](https://github.com/jeromegn/bson.cr) - Native BSON implementation
 * [jwt](https://github.com/greyblake/crystal-jwt) - Implementation of JWT (JSON Web Token)
 * [msgpack-crystal](https://github.com/benoist/msgpack-crystal) - MessagePack library
 * [ssh2.cr](https://github.com/datanoise/ssh2.cr) - Library that provides binding for libssh2 library

## ORM/ODM Extensions
 * [active_record.cr](https://github.com/waterlink/active_record.cr) - Active Record pattern implementation
 * [amethyst-model](https://github.com/drujensen/amethyst-model) - ORM Model for the Amethyst Framework

## Package Management
 * [shards](https://github.com/ysbaddaden/shards) - Dependency manager for the Crystal

## Project generators
 * [generate](https://github.com/generate-cr/generate) - A tool for generating whole Crystal project structure, or any part of it during lifetime of project

## Search
 * [soegen](https://github.com/Ragmaanir/soegen) - Elasticsearch client for Crystal similar to the stretcher gem for ruby

## Security
 * [openssl.cr](https://github.com/datanoise/openssl.cr) - Bindings for OpenSSL library

## Task management
 * [crake](https://github.com/MakeNowJust/crake) - Rake-like build utility library. It is just a library, so it does not provide CLI
 * [lake](https://github.com/adlerhsieh/lake) - Rake-like task management for Crystal programs

## Template Engine
  * [Bunny](https://github.com/samsheff/Bunny) - A simple HTML templating language for Crystal, same syntax as erb
  * [crustache](https://github.com/MakeNowJust/crustache) - [{{Mustache}}](https://mustache.github.io) for Crystal
  * [Kilt](https://github.com/jeromegn/kilt) - Abstraction layer for template engines.
  * [Slang](https://github.com/jeromegn/slang) - Lightweight, terse, templating language inspired by Ruby's Slim.
  * [temel](https://github.com/f/temel) - Extensible HTML::Builder alternative for Crystal, supports custom tag definitions

## Testing
 * [crotest](https://github.com/emancu/crotest) - A tiny and simple test framework
 * [matchi](https://github.com/fixcr/matchi) - Collection of expectation matchers
 * [minitest.cr](https://github.com/ysbaddaden/minitest.cr) - Library for unit tests and assertions
 * [mock](https://github.com/porras/mock) - Mocking library, inspired by the API of rspec-mocks
 * [mocks.cr](https://github.com/waterlink/mocks.cr) - Mocking library for Crystal
 * [power_assert.cr](https://github.com/rosylilly/power_assert.cr) - Powerful assertion for Crystal
 * [spec2.cr](https://github.com/waterlink/spec2.cr) - Enhanced testing library
 * [timecop.cr](https://github.com/waterlink/timecop.cr) - Library for mocking with `Time.now`. Inspired by [timecop ruby gem](https://github.com/travisjeffery/timecop)
 * [webmock.cr](https://github.com/manastech/webmock.cr) - Library for stubbing `HTTP::Client` requests

## Third-party APIs
 * [airbrake-crystal](https://github.com/kyrylo/airbrake-crystal) - A Crystal notifier for [Airbrake](https://airbrake.io)
 * [AnyBar_cr](https://github.com/davydovanton/AnyBar_cr) - Simple crystal wrapper for AnyBar library
 * [crystal_brium](https://github.com/manastech/crystal_brium) - Access Brium's API using Crystal
 * [crystal_slack](https://github.com/manastech/crystal_slack) - A tool that parses Slack slash commands or send incoming web hooks
 * [docker.cr](https://github.com/jeromegn/docker.cr) - Docker API client
 * [google_maps_api](https://github.com/fridgerator/google_maps_api) - Google Maps API
 * [gravatar.cr](https://github.com/fg/gravatar.cr.git) - A library to use Gravatar service
 * [shorturl.cr](https://github.com/veelenga/shorturl.cr) - A library to use URL shortening services
 * [soundcloud-crystal](https://github.com/sferik/soundcloud-crystal) - A library to access the SoundCloud API
 * [spotify.cr](https://github.com/marceloboeira/spotify.cr) - A library to access the Spotify API
 * [TelegramBot](https://github.com/hangyas/TelegramBot) - A wrapper for the Telegram Bot API
 * [twitter-crystal](https://github.com/sferik/twitter-crystal) - A library to access the Twitter API

## Virtualization
 * [rcpu](https://github.com/ddfreyne/rcpu) - A virtual machine emulator and assembler

## Web Frameworks
 * [amatista](https://github.com/werner/amatista) - A web framework to create quick applications
 * [amethyst](https://github.com/Codcore/Amethyst) - A Rails inspired web-framework
 * [carbon-crystal](https://github.com/benoist/carbon-crystal) - A framework with Rails in mind
 * [chocolate](https://github.com/Grabli66/chocolate) - Simple web framework and template engine
 * [frost](https://github.com/ysbaddaden/frost) - Full featured MVC Web Framework, largely inspired by Ruby on Rails
 * [kemal](https://github.com/sdogruyol/kemal) - Lightning Fast, Super Simple web framework. Inspired by Sinatra
 * [moonshine](https://github.com/dhruvrajvanshi/Moonshine) - A minimal web framework

## Web Servers
 * [fast-http-server](https://github.com/sdogruyol/fast-http-server) - Super fast, zero configuration command line HTTP Server.
 * [kamber](https://github.com/f/kamber) - Blog server based on Kemal
 * [prax.cr](https://github.com/ysbaddaden/prax.cr) - Rack proxy server for development

# Community
 * [Crystal Shards on Twitter](https://twitter.com/shardscrystal)
 * [Crystal weekly newsletters](http://www.crystalweekly.com/)
 * [Google Group](https://groups.google.com/forum/?fromgroups#!forum/crystal-lang)
 * [Reddit](https://www.reddit.com/domain/crystal-lang.org/)
 * [Slack Group](http://crystal.pine.moe/en/)
 * [Stackoverflow](http://stackoverflow.com/tags/crystal-lang/info)

# Resources
 * [crystal-lang](http://crystal-lang.org) - Official language site

# Services and Apps
 * [carc.in](https://carc.in/) - A web service that runs your code and displays the result
 * [Crank](https://github.com/arktisklada/crank) - A Procfile-based application manager (like Foreman)
 * [crystalshards](https://crystalshards.herokuapp.com/) - A web service that lists all available Crystal shards
 * [DeBot](https://github.com/jhass/DeBot) - IRC bot written in Crystal
 * [docrystal](http://docrystal.org/) - A web application that hosts documentation for Crystal packages
 * [fikri](https://github.com/askn/fikri) - Simple CLI To-Do App
 * [icr](https://github.com/greyblake/crystal-icr) - Interactive console for Crystal (like IRB for Ruby)
 * [nes](https://github.com/romeroadrian/nes.cr) - A NES emulator
 * [vicr](https://github.com/veelenga/vicr.git) - Vim-like Interactive CRystal

# Tools

## DevOps
 * [crystal-cookbook](https://github.com/vjdhama/crystal-cookbook) - Chef cookbook for installing crystal

## Editor Plugins
 * Atom
   * [crystal-tools](https://atom.io/packages/crystal-tools) - Enables built in tools in Crystal compiler
   * [language-crystal-actual](https://atom.io/packages/language-crystal-actual) - Crystal language support in Atom
   * [linter-crystal](https://atom.io/packages/linter-crystal) - Lint Crystal using the Crystal compiler in Atom
 * Emacs
   * [emacs-crystal-mode](https://github.com/jpellerin/emacs-crystal-mode) - Crystal language support for Emacs
 * Sublime
   * [sublime-crystal](https://github.com/manastech/sublime-crystal) - Crystal syntax highlighting for sublime Text
 * Vim
   * [vim-crystal](https://github.com/rhysd/vim-crystal) - Vim filetype support for Crystal
   * [vim-slang](https://github.com/isaacsloan/vim-slang) - Vim filetype support for Slang Templating Engine
