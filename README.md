# Awesome Crystal [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome) [![Build Status](https://travis-ci.org/veelenga/awesome-crystal.svg)](https://travis-ci.org/veelenga/awesome-crystal)

A curated list of awesome Crystal code and resources. Inspired by [awesome](https://github.com/sindresorhus/awesome) and [awesome-awesomeness](https://github.com/bayandin/awesome-awesomeness).
The goal is to have projects mostly stable and useful for users.

Contributions are welcome. Please take a quick look at the [contribution guidelines](https://github.com/veelenga/awesome-crystal/blob/master/CONTRIBUTING.md) first.

* [Awesome Crystal](#awesome-crystal)
  * [Algorithms and Data structures](#algorithms-and-data-structures)
  * [Api Builders](#api-builders)
  * [Caching](#caching)
  * [Cli Builders](#cli-builders)
  * [Cli Utils](#cli-utils)
  * [Configuration](#configuration)
  * [Data Generators](#data-generators)
  * [Database Drivers](#database-drivers)
  * [Database Tools](#database-tools)
  * [Email](#email)
  * [Environment Management](#environment-management)
  * [Examples and funny stuff](#examples-and-funny-stuff)
  * [Framework Components](#framework-components)
  * [Game Development](#game-development)
  * [HTTP](#http)
  * [Implementations/Compilers](#implementationscompilers)
  * [Logging and monitoring](#logging-and-monitoring)
  * [Low level bindings](#low-level-bindings)
  * [Misc](#misc)
  * [Networking](#networking)
  * [ORM/ODM Extensions](#ormodm-extensions)
  * [Package Management](#package-management)
  * [Project generators](#project-generators)
  * [Queue](#queue)
  * [Science and Data analysis](#science-and-data-analysis)
  * [Search](#search)
  * [Task management](#task-management)
  * [Template Engine](#template-engine)
  * [Testing](#testing)
  * [Third-party APIs](#third-party-apis)
  * [Virtualization](#virtualization)
  * [Web Frameworks](#web-frameworks)
  * [Web Servers](#web-servers)
* [Community](#community)
* [Resources](#resources)
  * [Official Documentation Translations](#official-documentation-translations)
* [Services and Apps](#services-and-apps)
* [Tools](#tools)
  * [DevOps](#devops)
  * [Editor Plugins](#editor-plugins)
  * [Shell Plugins](#shell-plugins)

## Algorithms and Data structures
 * [aho_corasick](https://github.com/chenkovsky/aho_corasick) - AhoCorasick algorithm
 * [crystal-linked-list](https://github.com/abvdasker/crystal-linked-list) - Implementation of Linked List
 * [crystaledge](https://github.com/unn4m3d/crystaledge) - A pure Vector Math library
 * [crystalline](https://github.com/jtomschroeder/crystalline) - A collection of containers and algorithms
 * [delimiter_tree](https://github.com/drujensen/delimiter_tree) - A tree structure that is built using a delimiter
 * [edits.cr](https://github.com/tcrouch/edits.cr) - Collection of edit distance algorithms
 * [heap.cr](https://github.com/chenkovsky/heap.cr) - Implementation of heap data structure
 * [miller_rabin](https://github.com/kuende/miller_rabin) - Implements [Miller-Rabin](https://en.wikibooks.org/wiki/Algorithm_Implementation/Mathematics/Primality_Testing) algorithm to check if a number is prime
 * [multiset.cr](https://github.com/tcrouch/multiset.cr) - Implementation of a multiset
 * [murmur3](https://github.com/kuende/murmur3) - Implementation of Murmur3 hash algorithm used by Cassandra
 * [primes](https://github.com/dkhofer/primes) - Library for testing if a number is prime and finding its prime factorization
 * [radix](https://github.com/luislavena/radix) - Radix Tree implementation
 * [ranger](https://github.com/akwiatkowski/ranger) - Range object operation library

## Api Builders
 * [crystal_api](https://github.com/akwiatkowski/crystal_api) - Simple PostgreSQL REST API with Rails devise-like auth

## Caching
 * [Bloom Filter](https://github.com/greyblake/crystal-bloom_filter) - Implementation of Bloom filter
 * [bojack](https://github.com/marceloboeira/bojack) - A non-reliable in-memory key-value store
 * [crystal-kiwi](https://github.com/greyblake/crystal-kiwi) - A unified interface for key-value stores
 * [crystal-memcached](https://github.com/comandeo/crystal-memcached) - Implementation of a memcached client
 * [Nuummite](https://github.com/CodeSteak/Nuummite) - A tiny persistent embedded key-value store

## Cli Builders
 * [cli](https://github.com/mosop/cli) - Library for building command-line interface applications
 * [commander](https://github.com/mrrooijen/commander) - Command-line interface builder
 * [completion](https://github.com/f/completion) - Easy command line completion engine
 * [docopt](https://github.com/chenkovsky/docopt.cr) - A [docopt.org](http://docopt.org) port
 * [optarg](https://github.com/mosop/optarg) - Yet another library for parsing command-line options and arguments

## Cli Utils
 * [progress](https://github.com/askn/progress) - [==..] Progress bar
 * [spinner](https://github.com/askn/spinner) - Terminal Spinner
 * [terminal_table.cr](https://github.com/benoist/terminal_table.cr) - Simple ASCII table generator

## Configuration
 * [ambience](https://github.com/vjdhama/ambience) - Simple app configuration using `ENV`
 * [cr-dotenv](https://github.com/gdotdesign/cr-dotenv) - Loads .env file
 * [crystal-toml](https://github.com/manastech/crystal-toml) - TOML parser
 * [dockerfile.cr](https://github.com/keplersj/dockerfile.cr) - Dockerfile Parsing Library
 * [zq](https://github.com/colstrom/zq) - Command-line ZPL processor

## Data Generators
 * [faker](https://github.com/askn/faker) - A library for generating fake data
 * [hashids.cr](https://github.com/splattael/hashids.cr) - A library to generate YouTube-like ids from one or many numbers

## Database Drivers
 * [crystal-db](https://github.com/crystal-lang/crystal-db) - Common db api
 * [crystal-leveldb](https://github.com/greyblake/crystal-leveldb) - Crystal bindings for LevelDB
 * [crystal-monetdb-libmapi](https://github.com/puppetpies/crystal-monetdb-libmapi) - Bindings for MonetDB
 * [crystal-mysql](https://github.com/waterlink/crystal-mysql) - Basic MySQL bindings
 * [crystal-mysql](https://github.com/crystal-lang/crystal-mysql) - MySQL connector for Crystal
 * [crystal-pg](https://github.com/will/crystal-pg) - A Postgres driver
 * [crystal-redis](https://github.com/stefanwille/crystal-redis) - Full featured Redis client
 * [crystal-sqlite3](https://github.com/crystal-lang/crystal-sqlite3) - SQLite3 bindings
 * [influxdb.cr](https://github.com/jeromegn/influxdb.cr) - InfluxDB driver
 * [mongo.cr](https://github.com/datanoise/mongo.cr) - Binding for MongoDB C driver
 * [rethinkdb-crystal](https://github.com/lbguilherme/rethinkdb-crystal) - RethinkDB Driver
 * [rocksdb.cr](https://github.com/maiha/rocksdb.cr) - RocksDB client

## Database Tools
 * [micrate](https://github.com/juanedi/micrate) - Database migration tool

## Email
 * [CrystalEmail](https://github.com/Nephos/CrystalEmail) - A RFC compliant Email validator
 * [sendgrid.cr](https://github.com/dlanileonardo/sendgrid.cr) - Simple Sendgrid Client
 * [smtp.cr](https://github.com/raydf/smtp.cr) - Email SMTP client

## Environment Management
 * [crenv](https://github.com/pine/crenv) - Crystal version manager
 * [rcm.cr](https://github.com/maiha/rcm.cr) - Redis Cluster Manager

## Examples and funny stuff
 * [crsfml-examples](https://github.com/BlaXpirit/crsfml-examples) - Simple games made with CrSFML
 * [crystal-benchmarks-game](https://github.com/kostya/crystal-benchmarks-game) - The Computer Language Benchmarks Game
 * [crystal-by-example](https://github.com/askn/crystal-by-example) - Crystal By Example
 * [crystal-patterns](https://github.com/veelenga/crystal-patterns) - Examples of GOF patters
 * [crystal_samples](https://github.com/tbpgr/crystal_samples) - Variety of Crystal samples
 * [crystalized_ruby](https://github.com/phoffer/crystalized_ruby) - Native Ruby extensions written in Crystal
 * [docker-kemal](https://github.com/ianblenke/docker-kemal) - An example Dockerized Crystal Kemal project
 * [kemal-chat](https://github.com/sdogruyol/kemal-chat) - Build realtime applications with Kemal and WebSocket
 * [kemal-monetdb-test](https://github.com/puppetpies/kemal-monetdb-test) - MonetDB Kemal test project
 * [kemal-pg-sample](https://github.com/sdogruyol/kemal-pg-sample) - Sample app to demonstrate kemal + postgresql usage
 * [kemal-react-chat](https://github.com/f/kemal-react-chat) - Build Realtime Web applications with Kemal and React
 * [kemal-react-pg-chat](https://github.com/Angarsk8/kemal-react-pg-chat) - Chat application developed with Kemal, React, ES2015 and PostgreSQL
 * [kemal-ws-pg-todo-app](https://github.com/Angarsk8/kemal-ws-pg-todo-app) - Realtime Todo application developed with Kemal, Websockets, jQuery, ES2015 and PostgreSQL
 * [kemal-ws-react-pg-todo-app](https://github.com/Angarsk8/kemal-ws-react-pg-todo-app) - Realtime Todo application developed with Kemal, Websockets, React, ES2015 and PostgreSQL
 * [kemal-ws-todo-app](https://github.com/Angarsk8/kemal-ws-todo-app) - Realtime Todo application developed with Kemal and Websockets
 * [kemal_elm_chat](https://github.com/kofno/kemal_elm_chat) - Simple chat server written with Kemal and Elm
 * [medley](https://github.com/jwoertink/medley) - A mixture of music related methods
 * [try.cr](https://github.com/maiha/try.cr) - Try monad
 * [xcrystal](https://github.com/exercism/xcrystal) - Exercism exercises

## Framework Components
 * [artanis](https://github.com/ysbaddaden/artanis) - Sinatra-like DSL (abusing macros)
 * [cr-melon](https://github.com/gdotdesign/cr-melon) - Class based Http APIs
 * [crouter](https://github.com/jreinert/crouter) - A standalone router
 * [crystal-mime](https://github.com/spalger/crystal-mime) - Mimetypes for Crystal
 * [kave](https://github.com/jwoertink/kave) - Kemal API Version Extension
 * [kemal-auth-token](https://github.com/akwiatkowski/kemal-auth-token) - Kemal middleware to authentication via HTTP header token using JWT
 * [kemal-comments](https://github.com/TyanNN/kemal-comments) - Simple comments for Kemal site
 * [kemal-monetdb](https://github.com/puppetpies/kemal-monetdb) - MonetDB Data connection for Kemal
 * [kemal-mysql](https://github.com/sdogruyol/kemal-mysql) - Easily add MySQL database to Kemal
 * [kemal-pg](https://github.com/sdogruyol/kemal-pg) - Easily add Postgresql database to Kemal
 * [kemal-redis](https://github.com/sdogruyol/kemal-redis) - Easily add Redis to Kemal
 * [kemal-session](https://github.com/Thyra/kemal-session) - Session handler for Kemal
 * [response_time](https://github.com/SuperPaintman/response-time) - Response time for Crystal servers (pure http server, kemal, etc.)
 * [spec-kemal](https://github.com/sdogruyol/spec-kemal) - Easy testing for Kemal
 * [toro](https://github.com/soveran/toro) - Tree Oriented Routing

## Game Development
 * [crystal-chipmunk](https://github.com/BlaXpirit/crystal-chipmunk) - Bindings for [Chipmunk](http://chipmunk-physics.net/), a fast and lightweight 2D game physics library
 * [flight-crusader](https://github.com/umurgdk/flight-crusader) - POC top down flight game
 * [glove](https://github.com/ddfreyne/glove) - A library for gaming development
 * [inari](https://github.com/ddfreyne/inari) - A game written in Crystal, using the Glove project as the game engine
 * [medico](https://github.com/konovod/medico) - Game about a medieval doctor
 * [mos_game](https://github.com/bararchy/mos_game) - Mini Offline Singleplayer game

## HTTP
 * [beryl](https://github.com/luislavena/beryl) - Action-focused HTTP routing library
 * [crul](https://github.com/porras/crul) - Command line HTTP client
 * [cryload](https://github.com/Sdogruyol/cryload) - HTTP benchmarking tool
 * [crystal-cossack](https://github.com/greyblake/crystal-cossack) - Simple flexible HTTP client
 * [crystal-routing](https://github.com/bcardiff/crystal-routing) - Extensible library to deal with http request and string based routing
 * [helmet](https://github.com/EvanHahn/crystal-helmet) - Set security-related HTTP headers
 * [http2](https://github.com/ysbaddaden/http2) - HTTP/2 Protocol Implementation
 * [http_distributor](https://github.com/Nephos/http_distributor) - HTTP server which allows sneaky http requests
 * [http_parser.cr](https://github.com/kostya/http_parser.cr) - Wrapper for [Http Parser lib](https://github.com/nodejs/http-parser)
 * [multipart.cr](https://github.com/RX14/multipart.cr) - Adds multipart and multipart/form-data support to the crystal standard library
 * [resp-crystal](https://github.com/soveran/resp-crystal) - Lightweight RESP client
 * [router-simple.cr](https://github.com/karupanerura/router-simple.cr) - Simple path router
 * [session](https://github.com/porras/session.git) - Cookie based sessions in Crystal HTTP applications

## Implementations/Compilers
 * [charly](https://github.com/KCreate/charly-lang) - Charly Programming Language
 * [cppize](https://github.com/unn4m3d/cppize) - Crystal-to-C++ transpiler
 * [crisp](https://github.com/rhysd/Crisp) - Lisp dialect implemented with Crystal
 * [crow](https://github.com/geppetto-apps/crow) - Transpile/compile Crystal to [Flow](https://flowtype.org/)
 * [crystal](https://github.com/crystal-lang/crystal) - Crystal itself is written in Crystal
 * [csmli](https://github.com/david50407/csmli) - Mini-Lisp interpreter
 * [onix](https://github.com/ozra/onyx-lang) - ONYX Programming Language

## Logging and monitoring
 * [crystal-logreader](https://github.com/arcage/crystal-logreader) - Tailing log file
 * [gelf-crystal](https://github.com/benoist/gelf-crystal) - A GELF logger
 * [syslog.cr](https://github.com/comandeo/syslog.cr) - Implementation of Syslog client

## Low level bindings
 * [C14N](https://github.com/vonKingsley/C14N) - Bindings for C14N (libxml2)
 * [crsfml](https://github.com/BlaXpirit/crsfml) - Bindings for [Simple and Fast Multimedia Library](http://www.sfml-dev.org/) (through CSFML)
 * [crt.cr](https://github.com/maiha/crt.cr) - Bindings for libncursesw and crt
 * [crystal-dbus](https://github.com/BlaXpirit/crystal-dbus) - Bindings to D-Bus
 * [crystal-gsl](https://github.com/ruivieira/crystal-gsl) - GNU Scientific Library bindings
 * [crystal-libpcap](https://github.com/puppetpies/crystal-libpcap) - Bindings for libpcap
 * [crystal-libtar](https://github.com/puppetpies/crystal-libtar) - Bindings for libtar
 * [crystal_av](https://github.com/kofno/crystal_av) - Bindings to [ClamAV](https://www.clamav.net/) anti-virus
 * [curses](https://github.com/ruivieira/curses) - Bindings for the curses library
 * [duktape.cr](https://github.com/jessedoyle/duktape.cr) - Bindings for the [Duktape](https://github.com/svaarala/duktape) javascript engine
 * [gphoto2.cr](https://github.com/Sija/gphoto2.cr) - Bindings for the [libgphoto2](http://www.gphoto.org/) library
 * [kt](https://github.com/kuende/kt) - Bindings for [Kyoto Tycoon](http://fallabs.com/kyototycoon/)
 * [libmagic-crystal](https://github.com/pablotron/libmagic-crystal) - Bindings for libmagic
 * [libnotify.cr](https://github.com/splattael/libnotify.cr) - Bindings for Libnotify
 * [libui.cr](https://github.com/Fusion/libui.cr) - Bindings for [libui](https://github.com/andlabs/libui)
 * [myhtml](https://github.com/kostya/myhtml) - Bindings for [lexborisov/myhtml](https://github.com/lexborisov/myhtml)
 * [nanomsg.cr](https://github.com/chenkovsky/nanomsg.cr) - Bindings for nanomsg
 * [openssl.cr](https://github.com/datanoise/openssl.cr) - Bindings for OpenSSL library
 * [pcap.cr](https://github.com/maiha/pcap.cr) - Bindings for libpcap
 * [posix](https://github.com/ysbaddaden/posix) - POSIX/C bindings
 * [serialport.cr](https://github.com/Sija/serialport.cr) - Bindings for [libserialport](http://sigrok.org/wiki/Libserialport) library
 * [snappy-crystal](https://github.com/benoist/snappy-crystal) - Bindings for Snappy library
 * [ssh2.cr](https://github.com/datanoise/ssh2.cr) - Bindings for libssh2 library
 * [termbox-crystal](https://github.com/andrewsuzuki/termbox-crystal) - Bindings and extension library for [termbox](https://github.com/nsf/termbox) (terminal UI library)
 * [zeromq-crystal](https://github.com/benoist/zeromq-crystal) - Bindings for ZeroMQ
 * [zlib.cr](https://github.com/datanoise/zlib.cr) - Bindings for ZLib library

## Misc
 * [aasm.cr](https://github.com/veelenga/aasm.cr) - Easy to use finite state machine for Crystal classes
 * [accord](https://github.com/neovintage/accord) - Sharable validations for Crystal objects
 * [chalk-box](https://github.com/azukiapp/crystal-chalk-box) - Terminal color toolbox, check support and colorized (without String monkey patch)
 * [circuit_breaker](https://github.com/TPei/circuit_breaker) - Implementation of the circuit breaker pattern
 * [clamd.cr](https://github.com/RX14/clamd.cr) - Client for the clamd antivirus server
 * [cltk](https://github.com/ziprandom/cltk) - A crystal port of the Ruby Language Toolkit
 * [crdoc](https://github.com/rhysd/crdoc) - CLI tool to search and open documentation
 * [cron_scheduler](https://github.com/kostya/cron_scheduler) - Job scheduler with crontab patterns
 * [crystagiri](https://github.com/madeindjs/Crystagiri) - An Html Reader / parser like [Nokogiri](https://github.com/sparklemotion/nokogiri) Ruby gem
 * [crystal-binary_parser](https://github.com/DanSnow/crystal-binary_parser) - Binary parser
 * [crystal-diff](https://github.com/MakeNowJust/crystal-diff) - A Crystal sequence differencing implementation
 * [crystal-futures](https://github.com/dhruvrajvanshi/crystal-futures) - Future type implementation
 * [crystal-i18n](https://github.com/whity/crystal-i18n) - Internationalization library
 * [daemonize.cr](https://github.com/DougEverly/daemonize.cr) - Crystal process daemonizer
 * [denetmen](https://github.com/izniburak/denetmen) - Useful micro validator / check library
 * [emoji.cr](https://github.com/veelenga/emoji.cr) - Emoji library
 * [etag](https://github.com/SuperPaintman/etag) - Library to generate HTTP ETags
 * [evented](https://github.com/krisleech/evented) - A micro library to publish and subscribe for Crystal objects
 * [executable_path](https://github.com/kostya/executable_path) - Portable current executable's path
 * [guardian](https://github.com/f/guardian) - File change watcher for Crystal and Non-Crystal libs
 * [haikunator](https://github.com/sanata-/haikunator) - Heroku-like random name generator
 * [hoop](https://github.com/hoopcr/hoop) - Building native OSX apps
 * [hq.cr](https://github.com/maiha/hq.cr) - Simple wrapper for crystal-xml
 * [html_builder](https://github.com/crystal-lang/html_builder) - DSL for creating HTML
 * [immutable](https://github.com/lucaong/immutable) - Implementation of thread-safe, persistent, immutable collections
 * [inflector](https://github.com/phoffer/inflector.cr) - Singularize, pluralize, camelize, etc (port from ActiveSupport)
 * [kreal](https://github.com/f/kreal) - Model sharing & RPC library built on and works with Kemal seamlessly
 * [lambda.cr](https://github.com/f/lambda.cr) - Uniformed function call syntax
 * [metaclass](https://github.com/mosop/metaclass) - A library for manipulating class-level definitions
 * [ms](https://github.com/SuperPaintman/ms) - Library to easily convert various time formats to milliseconds and milliseconds to human readable format
 * [observable](https://github.com/TPei/observable) - Implementation of the Observer pattern
 * [promise](https://github.com/jwaldrip/promise-cr) - A Promise Implementation
 * [quartz](https://github.com/andrewhamon/quartz) - Simple timer library
 * [ramlrenderer](https://github.com/beno/ramlrenderer) - HTLM doc builder for RAML 1.0
 * [raytracer-crystal](https://github.com/l3kn/raytracer-crystal) - CPU Raytracer with examples
 * [sentry](https://github.com/samueleaton/sentry) - Watches src files, rebuilds/reruns application on file changes
 * [shell.cr](https://github.com/dmytro/shell.cr) - Small simplistic helper class for executing shell commands
 * [statsd.cr](https://github.com/miketheman/statsd.cr) - [Statsd](https://github.com/etsy/statsd) client library
 * [stumpy_gif](https://github.com/l3kn/stumpy_gif) - Write (animated) GIF images
 * [stumpy_png](https://github.com/l3kn/stumpy_png) - Read and write PNG images
 * [syscall.cr](https://github.com/kubo39/syscall.cr) - Raw syscall interface
 * [tren](https://github.com/sdogruyol/tren) - Give your SQL some love
 * [ulid](https://github.com/SuperPaintman/ulid) - Universally Unique Lexicographically Sortable Identifier (ULID)
 * [wire](https://github.com/puppetpies/WIre) - A packet analyzer

## Networking
 * [amqp.cr](https://github.com/datanoise/amqp.cr) - AMQP 0.9.1 client with RabbitMQ extensions
 * [bson.cr](https://github.com/jeromegn/bson.cr) - Native BSON implementation
 * [CrystalIrc](https://github.com/Meoowww/CrystalIrc) - IRC implementation (Client, Server, Bots)
 * [fast_irc.cr](https://github.com/RX14/fast_irc.cr) - Fast IRC parser/generator
 * [jwt](https://github.com/greyblake/crystal-jwt) - Implementation of JWT (JSON Web Token)
 * [msgpack-crystal](https://github.com/benoist/msgpack-crystal) - MessagePack library
 * [sctp-crystal](https://github.com/CodeSteak/sctp-crystal) - SCTP networking library

## ORM/ODM Extensions
 * [active_record.cr](https://github.com/waterlink/active_record.cr) - Active Record pattern implementation
 * [amethyst-model](https://github.com/drujensen/amethyst-model) - ORM Model for the Amethyst Framework
 * [crecto](https://github.com/fridgerator/crecto) - Database wrapper, based on Ecto
 * [ohm-crystal](https://github.com/soveran/ohm-crystal) - Object-hash mapping library for Redis
 * [redis-tsv.cr](https://github.com/maiha/redis-tsv.cr) - Import and export data from Redis in TSV format
 * [selenite-db](https://github.com/xdougx/selenite-db) - A simple persistency-model based library
 * [stal-crystal](https://github.com/soveran/stal-crystal) - Set algebra solver for Redis
 * [topaz](https://github.com/tbrand/topaz) - A simple and useful db wrapper

## Package Management
 * [shards](https://github.com/ysbaddaden/shards) - Dependency manager for the Crystal

## Project generators
 * [bindgencr](https://github.com/TechMagister/bindgencr) - Generator of bindings based on castxml output
 * [crystal_lib](https://github.com/crystal-lang/crystal_lib) - Automatic binding generator for native libraries
 * [fez](https://github.com/jwoertink/fez) - A Kemal application generator
 * [generate](https://github.com/generate-cr/generate) - A tool for generating whole Crystal project structure, or any part of it during lifetime of project
 * [skaf](https://github.com/elorest/skaf) - Scaffolding for Kemal

## Queue
 * [crystal-resque-client](https://github.com/pine/crystal-resque-client) - Simple Resque queue client
 * [dispatch](https://github.com/bmulvihill/dispatch) - In memory asynchronous job processing
 * [disque-cr](https://github.com/foca/disque-cr) - Client for [Disque](https://github.com/antirez/disque) queueing system
 * [sidekiq.cr](https://github.com/mperham/sidekiq.cr) - Simple, efficient job processing

## Science and Data analysis
 * [chizge](https://github.com/aladagemre/chizge) - A Network (Graph) Analysis library, inspired by [NetworkX](https://github.com/networkx/networkx)
 * [machine](https://github.com/mathieulaporte/machine) - Simple machine learning algorithm
 * [predict.cr](https://github.com/RX14/predict.cr) - Satellite prediction library using the sgp4 model
 * [stats](https://github.com/Nephos/stats) - An expressive implementation of statistical distributions

## Search
 * [query-builder](https://github.com/izniburak/query-builder) - Sql Query Builder library
 * [query.cr](https://github.com/waterlink/query.cr) - Query abstraction
 * [soegen](https://github.com/Ragmaanir/soegen) - Elasticsearch client for Crystal similar to the stretcher gem for ruby

## Task management
 * [crake](https://github.com/MakeNowJust/crake) - Rake-like build utility library. It is just a library, so it does not provide CLI
 * [lake](https://github.com/adlerhsieh/lake) - Rake-like task management for Crystal programs

## Template Engine
 * [Bunny](https://github.com/samsheff/Bunny) - A simple HTML templating language for Crystal, same syntax as erb
 * [crustache](https://github.com/MakeNowJust/crustache) - [{{Mustache}}](https://mustache.github.io) for Crystal
 * [Kilt](https://github.com/jeromegn/kilt) - Abstraction layer for template engines
 * [Slang](https://github.com/jeromegn/slang) - Lightweight, terse, templating language inspired by Ruby's Slim
 * [teeplate](https://github.com/mosop/teeplate) - A library for rendering multiple template files
 * [temel](https://github.com/f/temel) - Extensible HTML::Builder alternative for Crystal, supports custom tag definitions

## Testing
 * [crotest](https://github.com/emancu/crotest) - A tiny and simple test framework
 * [matchi](https://github.com/fixcr/matchi) - Collection of expectation matchers
 * [minitest.cr](https://github.com/ysbaddaden/minitest.cr) - Library for unit tests and assertions
 * [mock](https://github.com/porras/mock) - Mocking library, inspired by the API of rspec-mocks
 * [mocks.cr](https://github.com/waterlink/mocks.cr) - Mocking library for Crystal
 * [power_assert.cr](https://github.com/rosylilly/power_assert.cr) - Powerful assertion for Crystal
 * [spec2-mocks](https://github.com/waterlink/spec2-mocks.cr) - An adapter of mocks.cr for spec2.cr
 * [spec2.cr](https://github.com/waterlink/spec2.cr) - Enhanced testing library
 * [timecop.cr](https://github.com/waterlink/timecop.cr) - Library for mocking with `Time.now`. Inspired by [timecop ruby gem](https://github.com/travisjeffery/timecop)
 * [webmock.cr](https://github.com/manastech/webmock.cr) - Library for stubbing `HTTP::Client` requests

## Third-party APIs
 * [airbrake-crystal](https://github.com/kyrylo/airbrake-crystal) - A Crystal notifier for [Airbrake](https://airbrake.io)
 * [AnyBar_cr](https://github.com/davydovanton/AnyBar_cr) - Simple crystal wrapper for AnyBar library
 * [aws-signer.cr](https://github.com/beanieboi/aws-signer.cr) - This library signs your HTTP requests using AWS v4
 * [crystal-connpass](https://github.com/pine/crystal-connpass) - Wrapper for the [Connpass](http://connpass.com/) API
 * [crystal-mondo](https://github.com/barisbalic/crystal-mondo) - A client for the [Mondo API](https://getmondo.co.uk/docs/)
 * [crystal-newrelic](https://github.com/waj/crystal-newrelic) - NewRelic API client
 * [crystal-qiita](https://github.com/pine/crystal-qiita) - A wrapper for the [Qiita](https://qiita.com/) API
 * [crystal_brium](https://github.com/manastech/crystal_brium) - Access Brium's API using Crystal
 * [crystal_slack](https://github.com/manastech/crystal_slack) - A tool that parses Slack slash commands or send incoming web hooks
 * [crystalforce](https://github.com/ucmsky/crystalforce) - Salesforce REST api
 * [docker.cr](https://github.com/jeromegn/docker.cr) - Docker API client
 * [dotacr](https://github.com/azah/dotacr) - Wrapper for Valve's DotA API
 * [fantasy_football_nerd_api](https://github.com/fridgerator/fantasy_football_nerd_api) - A library for the [Fantasy Football Nerd API](http://www.fantasyfootballnerd.com/fantasy-football-api)
 * [gitlab.cr](https://github.com/icyleaf/gitlab.cr) - GitLab API wrapper
 * [glosbe](https://github.com/greyblake/crystal-glosbe) - Client for [Glosbe API](https://glosbe.com/a-api)
 * [google_maps_api](https://github.com/fridgerator/google_maps_api) - Google Maps API
 * [google_translate](https://github.com/greyblake/crystal-google_translate) - Client for Google Translate
 * [gravatar.cr](https://github.com/fg/gravatar.cr.git) - A library to use Gravatar service
 * [hncr](https://github.com/Gangwolf/hncr) - A Hacker News API wrapper
 * [nexmo-crystal](https://github.com/timcraft/nexmo-crystal) - [Nexmo REST API](https://docs.nexmo.com/) client
 * [open_exchange_rates](https://github.com/osfx/open_exchange_rates) - A library to access [Open Exchange Rates](https://openexchangerates.org/) API
 * [openweather.cr](https://github.com/lucasocon/openweather.cr) - A wrapper for the Openweather API
 * [pullword](https://github.com/googya/pullword) - A package to use [pullword](http://pullword.com/)
 * [shorturl.cr](https://github.com/veelenga/shorturl.cr) - A library to use URL shortening services
 * [soundcloud-crystal](https://github.com/sferik/soundcloud-crystal) - A library to access the SoundCloud API
 * [spotify.cr](https://github.com/marceloboeira/spotify.cr) - A library to access the Spotify API
 * [TelegramBot](https://github.com/hangyas/TelegramBot) - A wrapper for the Telegram Bot API
 * [twitter-crystal](https://github.com/sferik/twitter-crystal) - A library to access the Twitter API
 * [wit-crystal](https://github.com/spalladino/wit-crystal) - Crystal SDK for [wit.ai](https://wit.ai/)

## Virtualization
 * [backed_file_system](https://github.com/schovi/baked_file_system) - Virtual file system implementation
 * [rcpu](https://github.com/ddfreyne/rcpu) - A virtual machine emulator and assembler

## Web Frameworks
 * [amatista](https://github.com/werner/amatista) - A web framework to create quick applications
 * [amethyst](https://github.com/Codcore/Amethyst) - A Rails inspired web-framework
 * [carbon-crystal](https://github.com/benoist/carbon-crystal) - A framework with Rails in mind
 * [chocolate](https://github.com/Grabli66/chocolate) - Simple web framework and template engine
 * [frost](https://github.com/ysbaddaden/frost) - Full featured MVC Web Framework, largely inspired by Ruby on Rails
 * [iceberg](https://github.com/adlerhsieh/iceberg) - A full-stack web framework
 * [kemal](https://github.com/sdogruyol/kemal) - Lightning Fast, Super Simple web framework. Inspired by Sinatra
 * [kemalyst](https://github.com/drujensen/kemalyst) - A rails like framework based on kemal
 * [moonshine](https://github.com/dhruvrajvanshi/Moonshine) - A minimal web framework

## Web Servers
 * [fast-http-server](https://github.com/sdogruyol/fast-http-server) - Super fast, zero configuration command line HTTP Server
 * [kamber](https://github.com/f/kamber) - Blog server based on Kemal
 * [prax.cr](https://github.com/ysbaddaden/prax.cr) - Rack proxy server for development
 * [serve](https://github.com/SuperPaintman/serve) - Command line static HTTP server

# Community
 * [Crystal Shards on Twitter](https://twitter.com/shardscrystal)
 * [Crystal weekly newsletters](http://www.crystalweekly.com/)
 * [Gitter](https://gitter.im/crystal-lang/crystal)
 * [Google Group](https://groups.google.com/forum/?fromgroups#!forum/crystal-lang)
 * [IRC](http://irc.lc/freenode/crystal-lang) - #crystal-lang on Freenode
 * [Metaruby](https://metaruby.com/c/crystal-forum) - Crystal Forum on Metaruby
 * [Reddit](https://www.reddit.com/r/crystal_programming)
 * [Slack Group](http://crystal.pine.moe/en/)
 * [Stackoverflow](http://stackoverflow.com/tags/crystal-lang/info)

# Resources
 * [Crystal for Rubyists](http://www.crystalforrubyists.com/) - free book to bootstrap your Crystal journey
 * [crystal-lang.org](http://crystal-lang.org) - Official language site

## Official Documentation Translations
 * [br.crystal-lang.org](http://br.crystal-lang.org/) - Brazilian
 * [ja.crystal-lang.org](http://ja.crystal-lang.org/) - Japanese
 * [ru.crystal-lang.org](http://ru.crystal-lang.org/) - Russian
 * [tw.crystal-lang.org](http://tw.crystal-lang.org/) - Chinese Traditional

# Services and Apps
 * [carc.in](https://carc.in/) - A web service that runs your code and displays the result
 * [Crank](https://github.com/arktisklada/crank) - A Procfile-based application manager (like Foreman)
 * [crystal-docs](https://crystal-docs.org) - A service for hosting Crystal Shard documentation
 * [crystalshards.herokuapp.com](https://crystalshards.herokuapp.com/), [crystalshards.xyz](http://crystalshards.xyz/) - Web services that list all available Crystal shards
 * [DeBot](https://github.com/jhass/DeBot) - IRC bot written in Crystal
 * [fikri](https://github.com/askn/fikri) - Simple CLI To-Do App
 * [icr](https://github.com/greyblake/crystal-icr) - Interactive console for Crystal (like IRB for Ruby)
 * [nes](https://github.com/romeroadrian/nes.cr) - A NES emulator
 * [shards.rocks](https://shards.rocks/) - Service that manages dependencies inspired by [Gemnasium](https://gemnasium.com/) and [David](https://david-dm.org/)
 * [torrent](https://github.com/Papierkorb/torrent) - A BitTorrent client
 * [vicr](https://github.com/veelenga/vicr.git) - Vim-like Interactive CRystal

# Tools
 * [crystal-ctags](https://github.com/SuperPaintman/crystal-ctags) - Ctags generator for Crystal

## DevOps
 * [crystal-cookbook](https://github.com/vjdhama/crystal-cookbook) - Chef cookbook for installing crystal

## Editor Plugins
 * Atom
   * [crystal-tools](https://atom.io/packages/crystal-tools) - Enables built in tools in Crystal compiler
   * [language-crystal-actual](https://atom.io/packages/language-crystal-actual) - Crystal language support in Atom
   * [linter-crystal](https://atom.io/packages/linter-crystal) - Lint Crystal using the Crystal compiler in Atom
 * Emacs
   * [emacs-crystal-mode](https://github.com/jpellerin/emacs-crystal-mode) - Crystal language support for Emacs
 * Spacemacs
   * [crystal-spacemacs-layer](https://github.com/juanedi/crystal-spacemacs-layer) - Spacemacs contribution layer for Crystal
 * Sublime
   * [sublime-crystal](https://github.com/crystal-lang/sublime-crystal) - Crystal syntax highlighting for sublime Text
 * Vim
   * [vim-crystal](https://github.com/rhysd/vim-crystal) - Vim filetype support for Crystal
   * [vim-slang](https://github.com/isaacsloan/vim-slang) - Vim filetype support for Slang Templating Engine
 * Visual Studio Code
   * [vscode-crystal](https://github.com/g3ortega/vscode-crystal) - Crystal language support in VSCode
   * [vscode-crystal-ide](https://github.com/kofno/crystal-ide) - Crystal IDE powered by [Language Server Protocol](https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol)

## Shell plugins
 * [crystal-zsh](https://github.com/veelenga/crystal-zsh) - .oh-my-zsh plugin
