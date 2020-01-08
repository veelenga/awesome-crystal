<p align="center"><img src="logo/logotype_horizontal.png" alt="awesome-crystal"></p>

# Awesome Crystal
[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![Build Status](https://api.travis-ci.org/veelenga/awesome-crystal.svg)](https://travis-ci.org/veelenga/awesome-crystal)

A curated list of awesome Crystal code and resources. Inspired by [awesome](https://github.com/sindresorhus/awesome) and [awesome-awesomeness](https://github.com/bayandin/awesome-awesomeness).
The goal is to have projects mostly stable and useful for the community.

Search [Crystal Shards](https://crystalshards.xyz) or follow announcements [Crystal [ANN]](https://crystal-ann.com) for more.

Contributions are welcome. Please take a quick look at the [contribution guidelines](https://github.com/veelenga/awesome-crystal/blob/master/.github/CONTRIBUTING.md) first.

* [Awesome Crystal](#awesome-crystal)
  * [Algorithms and Data structures](#algorithms-and-data-structures)
  * [Api Builders](#api-builders)
  * [Blockchain](#blockchain)
  * [C Bindings](#c-bindings)
  * [Caching](#caching)
  * [CLI Builders](#cli-builders)
  * [CLI Utils](#cli-utils)
  * [Code Analysis and Metrics](#code-analysis-and-metrics)
  * [Compression](#compression)
  * [Configuration](#configuration)
  * [Converters](#converters)
  * [Cryptography](#cryptography)
  * [Data Formats](#data-formats)
  * [Data Generators](#data-generators)
  * [Database Drivers/Clients](#database-driversclients)
  * [Database Tools](#database-tools)
  * [Debugging](#debugging)
  * [Dependency Injection](#dependency-injection)
  * [Development Tools](#development-tools)
  * [Email](#email)
  * [Environment Management](#environment-management)
  * [Examples and funny stuff](#examples-and-funny-stuff)
  * [Feature Flipping](#feature-flipping)
  * [Framework Components](#framework-components)
  * [Game Development](#game-development)
  * [HTML Builders](#html-builders)
  * [HTML/XML parsing](#htmlxml-parsing)
  * [HTTP](#http)
  * [Image Processing](#image-processing)
  * [Implementations/Compilers](#implementationscompilers)
  * [Logging and monitoring](#logging-and-monitoring)
  * [Machine Learning](#machine-learning)
  * [Markdown/Text Processors](#markdowntext-processors)
  * [Misc](#misc)
  * [Network Protocols](#network-protocols)
  * [Networking](#networking)
  * [ORM/ODM Extensions](#ormodm-extensions)
  * [Package Management](#package-management)
  * [Processes and Threads](#processes-and-threads)
  * [Project Generators](#project-generators)
  * [Queues and Messaging](#queues-and-messaging)
  * [Routing](#routing)
  * [Scheduling](#scheduling)
  * [Science and Data analysis](#science-and-data-analysis)
  * [Search](#search)
  * [Serverless Computing](#serverless-computing)
  * [System](#system)
  * [Task management](#task-management)
  * [Template Engine](#template-engine)
  * [Testing](#testing)
  * [Third-party APIs](#third-party-apis)
  * [Validation](#validation)
  * [Web Frameworks](#web-frameworks)
  * [Web Servers](#web-servers)
* [Community](#community)
  * [Unofficial](#unofficial)
* [Resources](#resources)
  * [Official Documentation Translations](#official-documentation-translations)
* [Services and Apps](#services-and-apps)
* [Tools](#tools)
  * [DevOps](#devops)
  * [Editor Plugins](#editor-plugins)
  * [Shell Plugins](#shell-plugins)

## Algorithms and Data structures
 * [bisect](https://github.com/spider-gazelle/bisect) - Inserting values into a sorted array
 * [crie](https://github.com/c910335/crie) - Compile-time Trie
 * [crystalline](https://github.com/jtomschroeder/crystalline) - A collection of containers and algorithms
 * [edits.cr](https://github.com/tcrouch/edits.cr) - Collection of edit distance algorithms
 * [graphlb](https://github.com/mettuaditya/graphlb) - Collection of graph datastructure and algorithms
 * [haversine](https://github.com/geocrystal/haversine) - An Implementation of the Haversine formula
 * [kd_tree](https://github.com/geocrystal/kd_tree) - An implementation of "K-Dimensional Tree" and "N-Nearest Neighbors"
 * [ksuid.cr](https://github.com/Sija/ksuid.cr) - K-Sortable Globally Unique IDs
 * [markov](https://github.com/mccallofthewild/markov) - Build Markov Chains and run Markov Processes
 * [multiset.cr](https://github.com/tcrouch/multiset.cr) - Implementation of a multiset
 * [ternary_search_tree](https://github.com/johnjansen/ternary_search_tree) - Ternary Search Tree

## Api Builders

## Blockchain
 * [SushiChain](https://github.com/SushiChain/SushiChain) - A custom blockchain platform

## C bindings
 * [clang.cr](https://github.com/crystal-lang/clang.cr) - Libclang bindings
 * [crt.cr](https://github.com/maiha/crt.cr) - Bindings for libncursesw and crt
 * [crystal-hunspell](https://github.com/mamantoha/crystal-hunspell) - Bindings for [Hunspell](https://hunspell.github.io/)
 * [duktape.cr](https://github.com/jessedoyle/duktape.cr) - Bindings for the [Duktape](https://github.com/svaarala/duktape) javascript engine
 * [gphoto2.cr](https://github.com/Sija/gphoto2.cr) - Bindings for the [libgphoto2](http://www.gphoto.org/) library
 * [icu.cr](https://github.com/olbat/icu.cr) - Bindings for the [ICU](http://site.icu-project.org/) library
 * [pcap.cr](https://github.com/maiha/pcap.cr) - Bindings for libpcap
 * [ssh2.cr](https://github.com/spider-gazelle/ssh2.cr) - Bindings for libssh2 library
 * [x_do.cr](https://github.com/woodruffw/x_do.cr) - Bindings for libxdo ([`xdotool`](https://github.com/jordansissel/xdotool))

## Caching

## CLI Builders
 * [admiral](https://github.com/jwaldrip/admiral.cr) - A robust DSL for writing command line interfaces
 * [clim](https://github.com/at-grandpa/clim) - Slim command line interface builder
 * [OptionParser](https://crystal-lang.org/api/OptionParser.html) - command-line options processing (Crystal stdlib)
 * [Phreak](https://github.com/shinzlet/phreak) - A highly flexible Crystal CLI builder in the style of OptionParser

## CLI Utils
 * [oq](https://github.com/Blacksmoke16/oq) - A performant, and portable jq wrapper to facilitate the consumption and output of formats other than JSON; using [jq](https://github.com/stedolan/jq) filters to transform the data.
 * [tablo](https://github.com/hutou/tablo) - A flexible terminal table generator
 * [tallboy](https://github.com/epoch/tallboy) - Generate ASCII character tables with support for spanning cells over multiple columns
 * [todo](https://git.sceptique.eu/Sceptique/todo) - Todo list working in command line

## Code Analysis and Metrics
 * [ameba](https://github.com/crystal-ameba/ameba) - A static code analysis tool

## Compression
 * [Gzip](https://crystal-lang.org/api/Gzip.html) - readers and writers of gzip format (Crystal stdlib)
 * [Zip](https://crystal-lang.org/api/Zip.html) - readers and writers of zip format (Crystal stdlib)
 * [Zlib](https://crystal-lang.org/api/Zlib.html) - readers and writers of zlib format (Crystal stdlib)

## Configuration
 * [totem](https://github.com/icyleaf/totem) - Load and parse a configuration in JSON, YAML, dotenv formats

## Converters
 * [base62.cr](https://github.com/Sija/base62.cr) - Base62 encoder/decoder, well suited for url-shortening
 * [money](https://github.com/crystal-money/money) - Handling money and currency conversion with ease (almost complete port of [RubyMoney](https://github.com/RubyMoney/money))
 * [sass.cr](https://github.com/straight-shoota/sass.cr) - Compile SASS/SCSS to CSS ([libsass](https://github.com/sass/libsass/) binding)

## Cryptography

## Data Formats
 * [BinData](https://github.com/spider-gazelle/bindata) - Binary data parser helper with an [ASN.1](https://en.wikipedia.org/wiki/Abstract_Syntax_Notation_One) parser
 * [crinder](https://github.com/c910335/crinder) - Class based json renderer
 * [CSV](https://crystal-lang.org/api/CSV.html) - parsing and generating for comma-separated values (Crystal stdlib)
 * [HAR](https://github.com/NeuraLegion/har) - HAR (HTTP Archive) parser
 * [INI](https://crystal-lang.org/api/INI.html) - INI file parser (Crystal stdlib)
 * [JSON](https://crystal-lang.org/api/JSON.html) - parsing and generating JSON documents (Crystal stdlib)
 * [JSON::OnSteroids](https://github.com/anykeyh/json_on_steroids) - handle and mutate JSON document easily
 * [maxminddb.cr](https://github.com/delef/maxminddb.cr) - MaxMindDB reader
 * [XML](https://crystal-lang.org/api/XML.html) - parsing and generating XML documents (Crystal stdlib)
 * [YAML](https://crystal-lang.org/api/YAML.html) - parsing and generating YAML documents (Crystal stdlib)

## Data Generators
 * [faker](https://github.com/askn/faker) - A library for generating fake data

## Database Drivers/Clients
 * [couchdb.cr](https://github.com/TechMagister/couchdb.cr) - CouchDB client
 * [crystal-db](https://github.com/crystal-lang/crystal-db) - Common db api
 * [crystal-mysql](https://github.com/crystal-lang/crystal-mysql) - MySQL connector for Crystal
 * [crystal-pg](https://github.com/will/crystal-pg) - A Postgres driver
 * [crystal-redis](https://github.com/stefanwille/crystal-redis) - Full featured Redis client
 * [crystal-rethinkdb](https://github.com/kingsleyh/crystal-rethinkdb) - Driver for RethinkDB / RebirthDB
 * [crystal-sqlite3](https://github.com/crystal-lang/crystal-sqlite3) - SQLite3 bindings
 * [rocksdb.cr](https://github.com/maiha/rocksdb.cr) - RocksDB client

## Database Tools
 * [migrate](https://github.com/vladfaust/migrate.cr) - A simpler database migration tool with transactions

## Debugging
 * [debug.cr](https://github.com/Sija/debug.cr) - `debug!(…)` macro for `pp`-style debugging

## Dependency Injection
 * [Crystal-DI](https://github.com/funk-yourself/crystal-di) - Lightweight DI Container
 * [syringe](https://github.com/Bonemind/syringe) - A simple and basic dependency injection shard for crystal

## Development Tools

## Email
 * [crystal-email](https://github.com/arcage/crystal-email) - Simple e-mail sending library
 * [CrystalEmail](https://git.sceptique.eu/Sceptique/CrystalEmail) - A RFC compliant Email validator

## Environment Management
 * [rcm.cr](https://github.com/maiha/rcm.cr) - Redis Cluster Manager

## Examples and funny stuff
 * [crystal-patterns](https://github.com/crystal-community/crystal-patterns) - Examples of GOF patters
 * [crystalworld](https://github.com/vladfaust/crystalworld) - [realworld.io](https://realworld.io) back-end API implementation
 * [exercism-crystal](https://github.com/exercism/crystal) - Exercism exercises
 * [try.cr](https://github.com/maiha/try.cr) - Try monad

## Feature Flipping

## Framework Components
 * [praetorian](https://github.com/ilanusse/praetorian) - Minimalist authorization library inspired by Pundit
 * [shrine.cr](https://github.com/jetrockets/shrine.cr) - File Attachment toolkit for Crystal applications. Heavily inspired by Shrine for Ruby
 * [tourmaline](https://github.com/watzon/tourmaline) - Telegram bot framework with an API loosely based on [telegraf.js](https://telegraf.js.org/)

## Game Development
 * [CrSFML](https://github.com/oprypin/crsfml) - Bindings to [SFML](https://www.sfml-dev.org/) multimedia/game library
 * [crystal-chipmunk](https://github.com/oprypin/crystal-chipmunk) - Bindings for [Chipmunk](http://chipmunk-physics.net/), a fast and lightweight 2D game physics library

## HTML Builders

## HTML/XML Parsing
 * [myhtml](https://github.com/kostya/myhtml) - Fast HTML5 Parser that includes CSS selectors

## HTTP
 * [crest](https://github.com/mamantoha/crest) - Simple HTTP and REST client, inspired by the Ruby's RestClient gem
 * [crul](https://github.com/porras/crul) - Command line HTTP client
 * [halite](https://github.com/icyleaf/halite) - Crystal HTTP Requests with a chainable REST API, built-in sessions and loggers
 * [http-multiserver.cr](https://github.com/vladfaust/http-multiserver.cr) - Mounting multiple servers via routes (a.k.a. URL mapping)
 * [http-params-serializable](https://github.com/vladfaust/http-params-serializable) - HTTP params (de)serialization, applicable to URL queries and URL-encoded forms
 * [http2](https://github.com/ysbaddaden/http2) - HTTP/2 Protocol Implementation
 * [HTTP::Client](https://crystal-lang.org/api/HTTP/Client.html) - HTTP client (Crystal stdlib)
 * [HTTP::Server](https://crystal-lang.org/api/HTTP/Server.html) - HTTP server (Crystal stdlib)
 * [HTTP::WebSocket](https://crystal-lang.org/api/HTTP/WebSocket.html) - HTTP WebSocket client (Crystal stdlib)
 * [resp-crystal](https://github.com/soveran/resp-crystal) - Lightweight RESP client
 * [sse.cr](https://github.com/y2k2mt/sse.cr) - [Server-Sent Events](https://www.w3.org/TR/2009/WD-eventsource-20090421) client

## Image processing

## Implementations/Compilers
 * [charly](https://github.com/charly-lang) - Charly Programming Language
 * [LinCAS-lang](https://github.com/LinCAS-lang) - A programming language for scientific computation
 * [mint-lang](https://github.com/mint-lang/mint) - A refreshing programming language for the front-end web
 * [myst-lang](https://github.com/myst-lang/) - A practical, dynamic language designed to be written and understood as easily and efficiently as possible
 * [runic-lang](https://github.com/runic-lang) - In-design toy language

## Logging and monitoring
 * [crafana](https://github.com/spoved/crafana.cr) - A [Grafana](https://grafana.com/) library to help autogenerate dashboards
 * [crylog](https://github.com/blacksmoke16/crylog) - Flexible logging framework based on Monolog
 * [Logger](https://crystal-lang.org/api/Logger.html) - logging utility (Crystal stdlib)
 * [statsd.cr](https://github.com/miketheman/statsd.cr) - [Statsd](https://github.com/etsy/statsd) client library

## Machine Learning
 * [ai4cr](https://github.com/drhuffman12/ai4cr) - Artificial Intelligence (based on https://github.com/SergioFierens/ai4r)
 * [Cadmium](https://github.com/cadmiumcr/cadmium) - NLP library based heavily on [natural](https://github.com/NaturalNode/natural)
 * [crystal-fann](https://github.com/NeuraLegion/crystal-fann) - FANN (Fast Artifical Neural Network) binding
 * [shainet](https://github.com/NeuraLegion/shainet) - SHAInet (Neural Network in pure crystal)

## Markdown/Text Processors
 * [markd](https://github.com/icyleaf/markd) - Yet another markdown parser built for speed, Compliant to CommonMark specification

## Misc
 * [aasm.cr](https://github.com/veelenga/aasm.cr) - Easy to use finite state machine for Crystal classes
 * [any_hash.cr](https://github.com/Sija/any_hash.cr) - Recursive Hash with better JSON::Any included
 * [callbacks](https://github.com/vladfaust/callbacks.cr) - Expressive callbacks module
 * [CrSignals](https://github.com/firejox/CrSignals) - Signals/slots notification library
 * [crystal-web-framework-stars](https://github.com/isaced/crystal-web-framework-stars) - Web frameworks for Crystal, most starred on Github
 * [emoji.cr](https://github.com/veelenga/emoji.cr) - Emoji library
 * [i18n.cr](https://github.com/vladfaust/i18n.cr) - Internationalization shard
 * [immutable](https://github.com/lucaong/immutable) - Implementation of thread-safe, persistent, immutable collections
 * [message_verifier.cr](https://github.com/danielwestendorf/message_verifier.cr) - Verify and generate Rails `ActiveSupport::MessageVerifier` signed tokens
 * [monads](https://github.com/alex-lairan/monads) - Monad implementation
 * [pinger](https://github.com/spider-gazelle/pinger) - Ping IP addresses and DNS entries without requiring sudo
 * [port_midi](https://github.com/jimm/crystal_port_midi) - Crystal C bindings for the PortMIDI cross-platform MIDI I/O library
 * [retriable.cr](https://github.com/Sija/retriable.cr) - Simple DSL to retry failed code blocks

## Network Protocols
 * [connect-proxy](https://github.com/spider-gazelle/connect-proxy) - Connect method style of HTTP tunnelling / HTTP proxy
 * [crystal-json-socket](https://github.com/foi/crystal-json-socket) - JSON-socket client & server implementation. Inspired by and compatible with [node-json-socket](https://github.com/sebastianseilund/node-json-socket/) and [ruby-json-socket](https://github.com/foi/ruby-json-socket)
 * [crystal-snmp](https://github.com/spider-gazelle/crystal-snmp) - An SNMP implementation with version 1, 2c and 3 support
 * [jwt](https://github.com/crystal-community/jwt) - Implementation of JWT (JSON Web Token)
 * [OAuth](https://crystal-lang.org/api/OAuth.html) - OAuth consumer (Crystal stdlib)
 * [OAuth2](https://crystal-lang.org/api/OAuth2.html) - OAuth2 client (Crystal stdlib)
 * [OpenSSL](https://crystal-lang.org/api/OpenSSL.html) - bindings to libssl (Crystal stdlib)
 * [telnet.cr](https://github.com/spider-gazelle/telnet.cr) - Telnet protocol
 * [transfer_more](https://git.sceptique.eu/Sceptique/transfer_more) - Clone of transfer.sh to uploads files

## Networking
 * [ipaddress.cr](https://github.com/Sija/ipaddress.cr) - Library to handle IPv4 and IPv6 addresses

## ORM/ODM Extensions
 * [avram](https://github.com/luckyframework/avram) - A database wrapper for reading, writing, and migrating Postgres databases.
 * [clear](https://github.com/anykeyh/clear) - ORM specialized to PostgreSQL only but with advanced features
 * [crecto](https://github.com/Crecto/crecto) - Database wrapper, based on Ecto
 * [granite](https://github.com/amberframework/granite) - ORM for Postgres, Mysql, Sqlite
 * [jennifer.cr](https://github.com/imdrasil/jennifer.cr) - Active Record pattern implementation with flexible query chainable builder and migration system
 * [ohm-crystal](https://github.com/soveran/ohm-crystal) - Object-hash mapping library for Redis
 * [onyx-sql](https://github.com/onyxframework/sql) - DB-agnostic SQL ORM with beautiful DSL and type-safe Query builder
 * [stal-crystal](https://github.com/soveran/stal-crystal) - Set algebra solver for Redis

## Package Management
 * [shards](https://github.com/crystal-lang/shards) - Dependency manager for the Crystal

## Processes and Threads
 * [await_async](https://github.com/anykeyh/await_async) - Add keywords await & async in Crystal Lang
 * [promise](https://github.com/spider-gazelle/promise) - A Promise implementation with type inference

## Project Generators
 * [libgen](https://github.com/olbat/libgen) - Automatic bindings generator configured using JSON/YAML files

## Queues and Messaging
 * [mosquito](https://github.com/robacarp/mosquito/) - Redis backed periodic and ad hoc job processing
 * [sidekiq.cr](https://github.com/mperham/sidekiq.cr) - Simple, efficient job processing

## Routing
 * [orion](https://github.com/obsidian/orion) - A minimal, rails-esque routing library
 * [router.cr](https://github.com/tbrand/router.cr) - Minimum but powerful http router for HTTP::Server
 * [toro](https://github.com/soveran/toro) - Tree Oriented Routing

## Scheduling
 * [crystime](https://gitlab.com/crystallabs/crystime) - Advanced time, calendar, schedule, and remind library
 * [schedule.cr](https://github.com/hugoabonizio/schedule.cr) - Run periodic tasks
 * [tasker](https://github.com/spider-gazelle/tasker) - A high precision scheduler including timezone aware cron jobs

## Science and Data analysis
 * [linalg](https://github.com/konovod/linalg) - Linear algebra library inspired by MATLAB and SciPy.linalg
 * [num.cr](https://github.com/crystal-data/num.cr) - Numerical computing library supporting N-Dimensional data
 * [stats](https://git.sceptique.eu/Sceptique/stats) - An expressive implementation of statistical distributions

## Search
 * [soegen](https://github.com/Ragmaanir/soegen) - Elasticsearch client for Crystal similar to the stretcher gem for ruby

## Serverless Computing
 * [FaaStRuby](https://faastruby.io) - Serverless Software Development Platform for Ruby and Crystal.

## System

## Task management

## Template Engine
 * [crinja](https://github.com/straight-shoota/crinja) - An implementation of the [Jinja2 template engine](http://jinja.pocoo.org/)
 * [ECR (Embedded Crystal)](https://crystal-lang.org/api/ECR.html) - compile time template language which uses plain crystal expressions (Crystal stdlib)
 * [Jbuilder](https://github.com/shootingfly/jbuilder) - Generate JSON objects with a Builder-style DSL, inspired by jbuilder

## Testing
 * [crytic](https://github.com/hanneskaeufler/crytic) - Mutation testing framework
 * [mass-spec](https://github.com/c910335/mass-spec) - Web API testing library
 * [microtest](https://github.com/Ragmaanir/microtest) - Small opinionated testing library focusing on power asserts
 * [minitest.cr](https://github.com/ysbaddaden/minitest.cr) - Library for unit tests and assertions
 * [Spec](https://crystal-lang.org/api/Spec.html) - spec framework (Crystal stdlib)
 * [spectator](https://gitlab.com/arctic-fox/spectator) - Feature rich spec framework that uses the modern expect syntax
 * [vcr](https://github.com/spoved/vcr.cr) - A HTTP capture and replay implementation for crystal
 * [webdriver_pump](https://github.com/bwilczek/webdriver_pump) - Page Object library. Inspired by Ruby's [WatirPump](https://github.com/bwilczek/watir_pump)
 * [webmock.cr](https://github.com/manastech/webmock.cr) - Library for stubbing `HTTP::Client` requests

## Third-party APIs
 * [aws-credentials](https://github.com/y2k2mt/aws-credentials) - Get AWS credentials in various ways
 * [awscr-s3](https://github.com/taylorfinnell/awscr-s3) - AWS S3 interface
 * [crystal-consul](https://github.com/rogerwelin/crystal-consul) - Consul API client
 * [crystal-darksky](https://github.com/sb89/crystal-darksky) - Wrapper for the [Dark Sky](https://darksky.net) API
 * [crystal-swapi](https://github.com/sb89/crystal-swapi) - Star Wars API (SWAPI) wrapper
 * [GDAX](https://github.com/mccallofthewild/gdax) - GDAX REST and WebSocket API Wrapper with request signing
 * [kube-client.cr](https://github.com/spoved/kube-client.cr) - Kubernetes API Client
 * [mixpanel-crystal](https://github.com/petoem/mixpanel-crystal) - A library for sending events to Mixpanel
 * [raven.cr](https://github.com/sija/raven.cr) - Raven is a client for [Sentry](https://github.com/getsentry/sentry)
 * [ynab.cr](https://github.com/jaredsmithse/ynab.cr) - A library to interact with your YNAB data

## Validation
 * [assert](https://github.com/blacksmoke16/assert) - Extensible annotation based object validation library
 * [validations](https://github.com/vladfaust/validations.cr) - Validations mixin

## Web Frameworks
 * [amber](https://github.com/amberframework/amber) - Open source efficient and cohesive web application framework
 * [athena](https://github.com/blacksmoke16/athena) - Modular, annotation based, API oriented framework with built in param conversion
 * [lucky](https://github.com/luckyframework/lucky) - Catch bugs early, forget about most performance issues, and spend more time on code instead of debugging and writing tests
 * [spider-gazelle](https://github.com/spider-gazelle/spider-gazelle) - A Rails esque web framework with a focus on speed and extensibility

## Web Servers

# Community
 * [Crystal weekly newsletters](http://crystalweekly.com/)
 * [Gitter](https://gitter.im/crystal-lang/crystal)
 * [Google Group](https://groups.google.com/forum/?fromgroups#!forum/crystal-lang)
 * [IRC](http://irc.lc/freenode/crystal-lang) - #crystal-lang on Freenode
 * [Metaruby](https://metaruby.com/c/crystal-forum) - Crystal Forum on Metaruby
 * [Reddit](https://www.reddit.com/r/crystal_programming/)
 * [Stackoverflow](https://stackoverflow.com/tags/crystal-lang/info)

## Unofficial
 * [Chinese-speaking Telegram Group](https://t.me/crystal_cn) - 来吧！TG 中文圈的朋友们！
 * [Crystal Programming Discord Server](https://discord.gg/YS7YvQy) - Unofficial Discord server dedicated to the Crystal Programming Language
 * [Russian-speaking Telegram Group](https://t.me/crystal_ru) - Добро пожаловать, товарищ!

# Resources
 * [Crystal for Rubyists](http://www.crystalforrubyists.com/) - Free book to bootstrap your Crystal journey
 * [Crystal Mastery](https://crystalmastery.io/) - Screencasts for learning Crystal
 * [crystal-lang.org](https://crystal-lang.org) - Official language site
 * [devdocs.io](https://devdocs.io/crystal/) - API Documentation Browser with Crystal support
 * [getgood.at](https://getgood.at/crystal/in-a-day) - Learn Crystal in a Day
 * [Programming Crystal](https://pragprog.com/book/crystal/programming-crystal) - PragProg book to start your Crystal journey

## Official Documentation Translations
 * [br.crystal-lang.org](http://br.crystal-lang.org/) - Brazilian
 * [ja.crystal-lang.org](http://ja.crystal-lang.org/) - Japanese
 * [kr.crystal-lang.org](https://kr.crystal-lang.org/) - Korean
 * [ru.crystal-lang.org](http://ru.crystal-lang.org/) - Russian
 * [tw.crystal-lang.org](http://tw.crystal-lang.org/) - Chinese Traditional

# Services and Apps
 * [carc.in](https://carc.in/) - A web service that runs your code and displays the result
 * [cry](https://github.com/elorest/cry) - Ability to execute crystal code in a fashion similar to Ruby's pry edit
 * [Crystal [ANN]](https://crystal-ann.com) - Announce new project, blog post, version update or any other Crystal work
 * [crystalshards.herokuapp.com](https://crystalshards.herokuapp.com/), [crystalshards.xyz](http://crystalshards.xyz/) - Web services that list all available Crystal shards
 * [Crystular](http://www.crystular.org) - Regular expression tester
 * [DeBot](https://github.com/jhass/DeBot) - IRC bot written in Crystal
 * [icr](https://github.com/crystal-community/icr) - Interactive console for Crystal (like IRB for Ruby)
 * [Invidious](https://github.com/omarroth/invidious) - Invidious is an alternative front-end to YouTube
 * [mpngin](https://github.com/thewalkingtoast/mpngin) - A URL shortener with simple stats
 * [quicktype](https://quicktype.io/) - Generate models and serializers from JSON, JSON Schema, GraphQL, and TypeScript
 * [shards.info](http://shards.info/) - Web service that lists all repositories on GitHub that have Crystal code in them. The sources are available on [GitHub](https://github.com/mamantoha/shards-info)
 * [wikicr](https://git.sceptique.eu/Sceptique/wikicr) - Wiki using git to manage revisions

# Tools
 * [ast_helper](https://github.com/bcardiff/crystal-ast-helper) - Helper tool to debug parser and formatter
 * [crystal-base](https://github.com/ruivieira/crystal-base) - CentOS base docker image for Crystal development
 * [crystal-dash-docset](https://github.com/Sija/crystal-dash-docset) - [Dash](https://kapeli.com/dash) docset generator

## DevOps
 * [DPPM](https://github.com/DFabric/dppm) - An easy, universal way to install and manage applications as packages (mostly Linux)

## Editor Plugins
 * Atom
   * [crystal-tools](https://atom.io/packages/crystal-tools) - Enables built in tools in Crystal compiler
   * [language-crystal-actual](https://atom.io/packages/language-crystal-actual) - Crystal language support in Atom
 * Emacs
   * [emacs-crystal-mode](https://github.com/dotmilk/emacs-crystal-mode) - Crystal language support for Emacs
 * [scry](https://github.com/crystal-lang-tools/scry) - Code analysis server for Crystal implementing the [Language Server Protocol](https://microsoft.github.io/language-server-protocol/)
 * Spacemacs
   * [crystal-spacemacs-layer](https://github.com/juanedi/crystal-spacemacs-layer) - Spacemacs contribution layer for Crystal
 * Sublime
   * [sublime-crystal](https://github.com/crystal-lang-tools/sublime-crystal) - Crystal syntax highlighting for sublime Text
 * TextMate
   * [Crystal.tmbundle](https://github.com/crystal-lang-tools/Crystal.tmbundle) - Crystal syntax highlighting, compile, format command, snippets
 * Vim
   * [vim-crystal](https://github.com/rhysd/vim-crystal) - Vim filetype support for Crystal
   * [vim-slang](https://github.com/elorest/vim-slang) - Vim filetype support for Slang Templating Engine
 * Visual Studio Code
   * [vscode-crystal](https://github.com/g3ortega/vscode-crystal) - Crystal language support in VSCode
   * [vscode-crystal-ide](https://github.com/crystal-lang-tools/crystal-ide) - Crystal IDE powered by [Language Server Protocol](https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol)

## Shell plugins
 * [crun](https://github.com/Val/crun) - Crystal Run : shebang wrapper for Crystal
 * [crystal-zsh](https://github.com/veelenga/crystal-zsh) - .oh-my-zsh plugin