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
  * [Configuration](#configuration)
  * [Converters](#converters)
  * [Data Formats](#data-formats)
  * [Data Generators](#data-generators)
  * [Database Drivers/Clients](#database-driversclients)
  * [Database Tools](#database-tools)
  * [Development Tools](#development-tools)
  * [Email](#email)
  * [Environment Management](#environment-management)
  * [Examples and funny stuff](#examples-and-funny-stuff)
  * [Feature Flipping](#feature-flipping)
  * [Framework Components](#framework-components)
  * [Game Development](#game-development)
  * [GUI library](#gui-library)
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
 * [aho_corasick](https://github.com/chenkovsky/aho_corasick) - AhoCorasick algorithm
 * [bisect](https://github.com/spider-gazelle/bisect) - Inserting values into a sorted array
 * [bitfields](https://github.com/elorest/bitfields) - Pure Crystal implementation of BitFields. Handles encoding/decoding of bytes.
 * [CrOTP](https://github.com/philnash/crotp) - HOTP and TOTP implementation for two factor authentication
 * [crystal-diff](https://github.com/MakeNowJust/crystal-diff) - A Crystal sequence differencing implementation
 * [crystal-linked-list](https://github.com/abvdasker/crystal-linked-list) - Implementation of Linked List
 * [crystaledge](https://github.com/unn4m3d/crystaledge) - A pure Vector Math library
 * [crystalg](https://github.com/TobiasGSmollett/crystalg) - A Generic Algorithm Library
 * [crystalline](https://github.com/jtomschroeder/crystalline) - A collection of containers and algorithms
 * [delimiter_tree](https://github.com/drujensen/delimiter_tree) - A tree structure that is built using a delimiter
 * [edits.cr](https://github.com/tcrouch/edits.cr) - Collection of edit distance algorithms
 * [graphlb](https://github.com/mettuaditya/graphlb) - Collection of graph datastructure and algorithms
 * [hash_ring](https://github.com/TobiasGSmollett/hash_ring) - An Implementation of Consistent Hash Ring
 * [ksuid.cr](https://github.com/Sija/ksuid.cr) - K-Sortable Globally Unique IDs
 * [markov](https://github.com/mccallofthewild/markov) - Build Markov Chains and run Markov Processes
 * [multiset.cr](https://github.com/tcrouch/multiset.cr) - Implementation of a multiset
 * [murmur3](https://github.com/kuende/murmur3) - Implementation of Murmur3 hash algorithm used by Cassandra
 * [oak](https://github.com/obsidian/oak) - A flexible Radix Tree implementation
 * [radix](https://github.com/luislavena/radix) - Radix Tree implementation
 * [ternary_search_tree](https://github.com/johnjansen/ternary_search_tree) - Ternary Search Tree

## Api Builders
 * [kemal-rest-api](https://github.com/blocknotes/kemal-rest-api) - A library to create RESTful API with Kemal

## Blockchain
 * [SushiChain](https://github.com/SushiChain/SushiChain) - A custom blockchain platform

## C bindings
 * [asound-cr](https://github.com/TamasSzekeres/asound-cr) - Bindings for ALSA/libasound
 * [cairo-cr](https://github.com/TamasSzekeres/cairo-cr) - Bindings for [Cairo](https://cairographics.org/) graphics library
 * [clang.cr](https://github.com/ysbaddaden/clang.cr) - Libclang bindings
 * [crass](https://github.com/vonKingsley/crass) - Bindings for libsass
 * [crt.cr](https://github.com/maiha/crt.cr) - Bindings for libncursesw and crt
 * [crystal-gsl](https://github.com/ruivieira/crystal-gsl) - GNU Scientific Library bindings
 * [curl-crystal](https://github.com/blocknotes/curl-crystal) - Bindings for [libcurl](https://curl.haxx.se/libcurl/)
 * [duktape.cr](https://github.com/jessedoyle/duktape.cr) - Bindings for the [Duktape](https://github.com/svaarala/duktape) javascript engine
 * [gphoto2.cr](https://github.com/Sija/gphoto2.cr) - Bindings for the [libgphoto2](http://www.gphoto.org/) library
 * [icu.cr](https://github.com/olbat/icu.cr) - Bindings for the [ICU](http://site.icu-project.org/) library
 * [libnotify.cr](https://github.com/splattael/libnotify.cr) - Bindings for Libnotify
 * [pcap.cr](https://github.com/maiha/pcap.cr) - Bindings for libpcap
 * [pledge.cr](https://github.com/chris-huxtable/pledge.cr) - Bindings for OpenBSD's `pledge(2)`
 * [posix](https://github.com/ysbaddaden/posix) - POSIX/C bindings
 * [soundfile](https://github.com/mjago/soundfile) - Bindings for [libsndfile](http://www.mega-nerd.com/libsndfile/) library
 * [ssh2.cr](https://github.com/spider-gazelle/ssh2.cr) - Bindings for libssh2 library
 * [syslog.cr](https://github.com/chris-huxtable/syslog.cr) - Bindings for `syslog`
 * [termbox-crystal](https://github.com/andrewsuzuki/termbox-crystal) - Bindings and extension library for [termbox](https://github.com/nsf/termbox) (terminal UI library)
 * [x11-cr](https://github.com/TamasSzekeres/x11-cr) - X11 bindings
 * [x_do.cr](https://github.com/woodruffw/x_do.cr) - Bindings for libxdo ([`xdotool`](https://github.com/jordansissel/xdotool))

## Caching
 * [bloom_filter](https://github.com/crystal-community/bloom_filter) - Implementation of Bloom filter
 * [bojack](https://github.com/marceloboeira/bojack) - A non-reliable in-memory key-value store
 * [cache-hash](https://github.com/samueleaton/cache-hash) - A key/value store where entries expire after a specified interval
 * [crystal-memcached](https://github.com/comandeo/crystal-memcached) - Implementation of a memcached client
 * [Nuummite](https://github.com/CodeSteak/Nuummite) - A tiny persistent embedded key-value store

## CLI Builders
 * [admiral](https://github.com/jwaldrip/admiral.cr) - A robust DSL for writing command line interfaces
 * [cli](https://github.com/mosop/cli) - Library for building command-line interface applications
 * [clicr](https://github.com/j8r/clicr) -  A simple declarative command line interface builder
 * [clim](https://github.com/at-grandpa/clim) - Slim command line interface builder
 * [commander](https://github.com/mrrooijen/commander) - Command-line interface builder
 * [completion](https://github.com/f/completion) - Easy command line completion engine
 * [optarg](https://github.com/mosop/optarg) - Yet another library for parsing command-line options and arguments
 * [OptionParser](https://crystal-lang.org/api/OptionParser.html) - command-line options processing (Crystal stdlib)

## CLI Utils
 * [cride](https://github.com/j8r/cride) - A light CLI text editor/IDE
 * [progress_bar.cr](https://github.com/TPei/progress_bar.cr) - A simple and customizable progress bar
 * [terminal_table.cr](https://github.com/benoist/terminal_table.cr) - Simple ASCII table generator
 * [todo](https://git.sceptique.eu/Sceptique/todo) - Todo list working in command line

## Code Analysis and Metrics
 * [ameba](https://github.com/veelenga/ameba) - A static code analysis tool
 * [trashman](https://github.com/Groogy/trashman) - A simple memory profiler for Crystal applications

## Configuration
 * [cr-dotenv](https://github.com/gdotdesign/cr-dotenv) - Loads .env file
 * [envyable](https://github.com/philnash/envyable.cr) -  A simple YAML to ENV config loader
 * [habitat](https://github.com/luckyframework/habitat) - Type safe configuration for your classes and modules
 * [totem](https://github.com/icyleaf/totem) - Load and parse a configuration in JSON, YAML, dotenv formats

## Converters
 * [base62.cr](https://github.com/Sija/base62.cr) - Base62 encoder/decoder, well suited for url-shortening
 * [money](https://github.com/crystal-money/money) - Handling money and currency conversion with ease (almost complete port of [RubyMoney](https://github.com/RubyMoney/money))
 * [moola](https://github.com/dorkrawk/moola) - Library for dealing with money and conversion (inspired by [RubyMoney](https://github.com/RubyMoney/money))
 * [ms](https://github.com/SuperPaintman/ms) - Library to easily convert various time formats to milliseconds and milliseconds to human readable format
 * [sass.cr](https://github.com/straight-shoota/sass.cr) - Compile SASS/SCSS to CSS ([libsass](https://github.com/sass/libsass/) binding)
 * [time_format.cr](https://github.com/vladfaust/time_format.cr) - Convert time in human readable format with ease
 * [turkish-number](https://github.com/izniburak/turkish-number) - Turn integers into the Turkish words
 * [wkhtmltopdf-crystal](https://github.com/blocknotes/wkhtmltopdf-crystal) - Bindings / wrapper for libwkhtmltox (HTML to PDF / image converter)

## Data Formats
 * [BinData](https://github.com/spider-gazelle/bindata) - Binary data parser helper with an [ASN.1](https://en.wikipedia.org/wiki/Abstract_Syntax_Notation_One) parser
 * [config.cr](https://github.com/chris-huxtable/config.cr) - Easy to use configuration format parser
 * [crinder](https://github.com/c910335/crinder) - Class based json renderer
 * [CSV](https://crystal-lang.org/api/CSV.html) - parsing and generating for comma-separated values (Crystal stdlib)
 * [front_matter.cr](https://github.com/chris-huxtable/front_matter.cr) - Separates a files front matter from its content
 * [geoip2.cr](https://github.com/delef/geoip2.cr) - GeoIP2 reader
 * [Gzip](https://crystal-lang.org/api/Gzip.html) - readers and writers of gzip format (Crystal stdlib)
 * [INI](https://crystal-lang.org/api/INI.html) - INI file parser (Crystal stdlib)
 * [JSON](https://crystal-lang.org/api/JSON.html) - parsing and generating JSON documents (Crystal stdlib)
 * [JSON tools](https://github.com/impatienttraveller/json-tools) - An implementation of JSON Patch and Pointer RFC's
 * [maxminddb.cr](https://github.com/delef/maxminddb.cr) - MaxMindDB reader
 * [toml.cr](https://github.com/crystal-community/toml.cr) - TOML parser
 * [XML](https://crystal-lang.org/api/XML.html) - parsing and generating XML documents (Crystal stdlib)
 * [YAML](https://crystal-lang.org/api/YAML.html) - parsing and generating YAML documents (Crystal stdlib)
 * [Zip](https://crystal-lang.org/api/Zip.html) - readers and writers of zip format (Crystal stdlib)
 * [Zlib](https://crystal-lang.org/api/Zlib.html) - readers and writers of zlib format (Crystal stdlib)
 * [zq](https://github.com/colstrom/zq) - Command-line ZPL processor

## Data Generators
 * [faker](https://github.com/askn/faker) - A library for generating fake data
 * [hashids.cr](https://github.com/splattael/hashids.cr) - A library to generate YouTube-like ids from one or many numbers

## Database Drivers/Clients
 * [couchdb.cr](https://github.com/TechMagister/couchdb.cr) - CouchDB client
 * [crystal-db](https://github.com/crystal-lang/crystal-db) - Common db api
 * [crystal-monetdb-libmapi](https://github.com/puppetpies/crystal-monetdb-libmapi) - Bindings for MonetDB
 * [crystal-mysql](https://github.com/crystal-lang/crystal-mysql) - MySQL connector for Crystal
 * [crystal-pg](https://github.com/will/crystal-pg) - A Postgres driver
 * [crystal-redis](https://github.com/stefanwille/crystal-redis) - Full featured Redis client
 * [crystal-rethinkdb](https://github.com/kingsleyh/crystal-rethinkdb) - Driver for RethinkDB / RebirthDB
 * [crystal-sqlite3](https://github.com/crystal-lang/crystal-sqlite3) - SQLite3 bindings
 * [eventql-crystal](https://github.com/measurechina/eventql-crystal) - EventQL driver
 * [leveldb](https://github.com/crystal-community/leveldb) - Crystal bindings for LevelDB
 * [mongo.cr](https://github.com/datanoise/mongo.cr) - Binding for MongoDB C driver
 * [rocksdb.cr](https://github.com/maiha/rocksdb.cr) - RocksDB client
 * [tarantool-crystal](https://github.com/vladfaust/tarantool-crystal) - Tarantool driver

## Database Tools
 * [crecto-admin](https://github.com/Crecto/crecto-admin) - Admin dashboard for Crecto and your database
 * [micrate](https://github.com/juanedi/micrate) - Database migration tool
 * [migrate](https://github.com/vladfaust/migrate.cr) - A simpler database migration tool with transactions
 * [migro](https://github.com/aisrael/migro) - A database migration tool that allows migrations to be specified in either YAML or raw SQL

## Development Tools
 * [guardian](https://github.com/f/guardian) - File change watcher for Crystal and Non-Crystal libs
 * [kemal-watcher](https://github.com/faustinoaq/kemal-watcher) - Kemal plugin to watch files and live-reload the browser
 * [sentry](https://github.com/samueleaton/sentry) - Watches src files, rebuilds/reruns application on file changes
 * [sentry-run](https://github.com/faustinoaq/sentry-run) - Reload code changes using Sentry.run
 * [Warden](https://github.com/diggersheep/warden) - Watches files, run command and a git command if succeed on file changes
 * [watcher](https://github.com/faustinoaq/watcher) - Watch file changes using File.stat

## Email
 * [carbon](https://github.com/luckyframework/carbon) - Fun, testable, and adapter-based email library
 * [crystal-email](https://github.com/arcage/crystal-email) - Simple e-mail sending library
 * [CrystalEmail](https://git.sceptique.eu/Sceptique/CrystalEmail) - A RFC compliant Email validator
 * [devmail](https://github.com/tijn/devmail) - A combined SMTP/POP3-server with volatile mail storage
 * [sendgrid.cr](https://github.com/dlanileonardo/sendgrid.cr) - Simple Sendgrid Client

## Environment Management
 * [asdf-crystal](https://github.com/marciogm/asdf-crystal) - Plugin for asdf version manager
 * [crenv](https://github.com/pine/crenv) - Crystal version manager
 * [rcm.cr](https://github.com/maiha/rcm.cr) - Redis Cluster Manager

## Examples and funny stuff
 * [battlesnake_crystal](https://github.com/nbw/battlesnake_crystal) - Tron snake for [battlesnake](https://www.battlesnake.io/) competition
 * [blackjack-cr](https://github.com/gdonald/blackjack-cr) - Console Blackjack
 * [breakout.cr](https://github.com/petoem/breakout.cr) - Breakout game written using crsfml
 * [chuck-norris-holy-quotes](https://github.com/codenoid/chuck-norris-holy-quotes) - Chuck Norris holy quotes
 * [clamp](https://github.com/johnjansen/clamp) - Clamp any Comparable
 * [crsfml-examples](https://github.com/oprypin/crsfml-examples) - Simple games made with CrSFML
 * [crystal-benchmarks-game](https://github.com/kostya/crystal-benchmarks-game) - The Computer Language Benchmarks Game
 * [crystal-by-example](https://github.com/askn/crystal-by-example) - Crystal By Example
 * [Crystal-Maze](https://github.com/Demonstrandum/Crystal-Maze) - A* Path finding for PNG mazes
 * [crystal-mysql-crud-example](https://github.com/codenoid/crystal-mysql-crud-example) - Crystal MySQL CRUD example
 * [crystal-patterns](https://github.com/crystal-community/crystal-patterns) - Examples of GOF patters
 * [crystalized_ruby](https://github.com/phoffer/crystalized_ruby) - Native Ruby extensions written in Crystal
 * [crystalworld](https://github.com/vladfaust/crystalworld) - [realworld.io](https://realworld.io) back-end API implementation
 * [exercism-crystal](https://github.com/exercism/crystal) - Exercism exercises
 * [jihantoro-cr-mysql](https://github.com/codenoid/jihantoro-cr-mysql) - Crystal MySQL from scratch sample app
 * [jihantoro.sd](https://github.com/codenoid/jihantoro.sd) - Crystal & Kemal version of Serdar Dogruyol blog
 * [kemal-chat](https://github.com/sdogruyol/kemal-chat) - Build realtime applications with Kemal and WebSocket
 * [kemal-heroku-example](https://github.com/cagataycali/kemal-heroku-example) - This repository shows, how you can publish your open source apps which powered kemal framework publish as heroku app in seconds
 * [kemal-mysql-blog](https://github.com/codenoid/kemal-mysql-blog) - Blog written with Crystal, Kemal and MySQL
 * [kemal-react-chat](https://github.com/f/kemal-react-chat) - Build Realtime Web applications with Kemal and React
 * [kemal-vue-chat](https://github.com/ChangJoo-Park/kemal-vue-chat) - Build Realtime Web applications with Kemal and Vue.js
 * [lattice-core-card-game](https://github.com/jasonl99/card_game) - A demo web app for (WebSocket-based) lattice-core
 * [medley](https://github.com/jwoertink/medley) - A mixture of music related methods
 * [os-crystal](https://github.com/lbguilherme/os-crystal) - x86 Kernel implemented in Crystal
 * [realtime-todo-app](https://github.com/Angarsk8/realtime-todo-app) - Realtime Todo application developed with Kemal, Websockets, React, ES2015 and PostgreSQL
 * [rocky](https://github.com/codingphasedotcom/rocky) - React Over Crystal Kemal and Yarn
 * [try.cr](https://github.com/maiha/try.cr) - Try monad

## Feature Flipping
 * [can_use](https://github.com/rodrigopinto/can_use) - It is a minimalist feature toggle/flag for crystal based on yaml
 * [flipper](https://github.com/metaware/flipper) - Feature flipping/flags/rollouts. Supports multiple backends

## Framework Components
 * [cr-melon](https://github.com/gdotdesign/cr-melon) - Class based Http APIs
 * [Crystal-DI](https://github.com/funk-yourself/crystal-di) - Lightweight DI Container
 * [crystal-mime](https://github.com/spalger/crystal-mime) - Mimetypes for Crystal
 * [device_detector](https://github.com/creadone/device_detector) - Shard for detect device by user agent string
 * [Exception Page](https://github.com/crystal-loot/exception_page) - An exceptional exception page for Crystal web libraries and frameworks
 * [graphql-crystal](https://github.com/ziprandom/graphql-crystal) - [Graphql](http://graphql.org) implementation
 * [kave](https://github.com/jwoertink/kave) - Kemal API Version Extension
 * [kemal-auth-token](https://github.com/akwiatkowski/kemal-auth-token) - Kemal middleware to authentication via HTTP header token using JWT
 * [kemal-monetdb](https://github.com/puppetpies/kemal-monetdb) - MonetDB Data connection for Kemal
 * [kemal-session](https://github.com/kemalcr/kemal-session) - Session handler for Kemal
 * [mime-types.cr](https://github.com/jwaldrip/mime-types.cr) - A port of the Ruby MIME-types library
 * [multi-auth](https://github.com/msa7/multi_auth) - Standardized multi-provider OAuth2 authentication (inspired by omniauth)
 * [praetorian](https://github.com/ilanusse/praetorian) - Minimalist authorization library inspired by Pundit
 * [request_id](https://github.com/SuperPaintman/request-id) - Middleware for generates / pick up a unique request ID for Crystal servers
 * [response_time](https://github.com/SuperPaintman/response-time) - Response time for Crystal servers (pure http server, kemal, etc.)
 * [spec-kemal](https://github.com/kemalcr/spec-kemal) - Easy testing for Kemal

## Game Development
 * [cray](https://gitlab.com/Zatherz/cray) - Bindings for [raylib](http://www.raylib.com/), an easy-to-use game development library
 * [CrSFML](https://github.com/oprypin/crsfml) - Bindings to [SFML](https://www.sfml-dev.org/) multimedia/game library
 * [crystal-chipmunk](https://github.com/oprypin/crystal-chipmunk) - Bindings for [Chipmunk](http://chipmunk-physics.net/), a fast and lightweight 2D game physics library
 * [glove](https://github.com/ddfreyne/glove) - A library for gaming development
 * [inari](https://github.com/ddfreyne/inari) - A collection of games using Glove as the game engine
 * [mos_game](https://github.com/bararchy/mos_game) - Mini Offline Singleplayer game

## GUI library
 * [hedron](https://github.com/Qwerp-Derp/hedron) - An extendable GUI library, with markup language capabilities
 * [libui.cr](https://github.com/Fusion/libui.cr) - Bindings for [libui](https://github.com/andlabs/libui)
 * [qt5.cr](https://github.com/Papierkorb/qt5.cr) - Qt5 bindings for Crystal, based on Bindgen

## HTML/XML Parsing
 * [crystagiri](https://github.com/madeindjs/Crystagiri) - An Html Reader / parser like [Nokogiri](https://github.com/sparklemotion/nokogiri) Ruby gem
 * [gumbo-crystal](https://github.com/blocknotes/gumbo-crystal) - Bindings for [Gumbo](https://github.com/google/gumbo-parser), an HTML5 parsing library made by Google
 * [hq.cr](https://github.com/maiha/hq.cr) - Simple wrapper for crystal-xml
 * [myhtml](https://github.com/kostya/myhtml) - Fast HTML5 Parser that includes CSS selectors

## HTTP
 * [cossack](https://github.com/crystal-community/cossack) - Simple flexible HTTP client
 * [crest](https://github.com/mamantoha/crest) - Simple HTTP and REST client, inspired by the Ruby's RestClient gem
 * [crul](https://github.com/porras/crul) - Command line HTTP client
 * [cryload](https://github.com/sdogruyol/cryload) - HTTP benchmarking tool
 * [halite](https://github.com/icyleaf/halite) - Crystal HTTP Requests with a chainable REST API, built-in sessions and loggers
 * [helmet](https://github.com/EvanHahn/crystal-helmet) - Set security-related HTTP headers
 * [http-multiserver.cr](https://github.com/vladfaust/http-multiserver.cr) - Mounting multiple servers via routes (a.k.a. URL mapping)
 * [http-params-serializable](https://github.com/vladfaust/http-params-serializable) - HTTP params (de)serialization, applicable to URL queries and URL-encoded forms
 * [http-protection](https://github.com/rogeriozambon/http-protection) - Protection against typical web attacks
 * [http2](https://github.com/ysbaddaden/http2) - HTTP/2 Protocol Implementation
 * [HTTP::Client](https://crystal-lang.org/api/HTTP/Client.html) - HTTP client (Crystal stdlib)
 * [HTTP::Server](https://crystal-lang.org/api/HTTP/Server.html) - HTTP server (Crystal stdlib)
 * [HTTP::WebSocket](https://crystal-lang.org/api/HTTP/WebSocket.html) - HTTP WebSocket client (Crystal stdlib)
 * [keyer_cr](https://github.com/danielpclark/keyer_cr) - Adds HTTP GET/POST parameter parsing as a Hash-like object
 * [ngrok.cr](https://github.com/watzon/ngrok.cr) - Ngrok wrapper
 * [params](https://github.com/vladfaust/params.cr) - The strongly-typed HTTP params parsing module
 * [resp-crystal](https://github.com/soveran/resp-crystal) - Lightweight RESP client

## Image processing
 * [magickwand-crystal](https://github.com/blocknotes/magickwand-crystal) - Bindings for [MagickWand](https://www.imagemagick.org/script/magick-wand.php), the C interface for ImageMagick processing libraries
 * [stumpy_gif](https://github.com/stumpycr/stumpy_gif) - Write (animated) GIF images
 * [stumpy_png](https://github.com/stumpycr/stumpy_png) - Read and write PNG images

## Implementations/Compilers
 * [charly](https://github.com/charly-lang) - Charly Programming Language
 * [cibyl](https://github.com/senselogic/CIBYL) - Lightweight curly-bracket language which compiles to Ruby and Crystal
 * [cltk](https://github.com/ziprandom/cltk) - A crystal port of the Ruby Language Toolkit
 * [cppize](https://github.com/unn4m3d/cppize) - Crystal-to-C++ transpiler
 * [crisp](https://github.com/rhysd/Crisp) - Lisp dialect implemented with Crystal
 * [crow](https://github.com/geppetto-apps/crow) - Transpile/compile Crystal to [Flow](https://flow.org/)
 * [LinCAS-lang](https://github.com/LinCAS-lang) - A programming language for scientific computation
 * [mint-lang](https://github.com/mint-lang/mint) - A refreshing programming language for the front-end web
 * [myst-lang](https://github.com/myst-lang/) - A practical, dynamic language designed to be written and understood as easily and efficiently as possible
 * [NuummiteOS](https://github.com/TheKernelCorp/NuummiteOS) - An OS written in Crystal as a Proof of Concept
 * [runic-lang](https://github.com/runic-lang) - In-design toy language

## Logging and monitoring
 * [crometheus](https://gitlab.com/ezrast/crometheus) - A [Prometheus](https://prometheus.io/) client library
 * [crystal-logreader](https://github.com/arcage/crystal-logreader) - Tailing log file
 * [fluent-logger-crystal](https://github.com/TobiasGSmollett/fluent-logger-crystal) - A structured logger for [Fluentd](https://www.fluentd.org/)
 * [instana](https://github.com/instana/crystal-sensor) - A metrics and distributed trace collector for [Instana](https://www.instana.com/)
 * [katip](https://github.com/guvencenanguvenal/katip) - JSONbase logger
 * [Logger](https://crystal-lang.org/api/Logger.html) - logging utility (Crystal stdlib)
 * [statsd.cr](https://github.com/miketheman/statsd.cr) - [Statsd](https://github.com/etsy/statsd) client library
 * [syslog.cr](https://github.com/comandeo/syslog.cr) - Implementation of Syslog client

## Machine Learning
 * [ai4cr](https://github.com/drhuffman12/ai4cr) - Artificial Intelligence (based on https://github.com/SergioFierens/ai4r)
 * [crystal-fann](https://github.com/NeuraLegion/crystal-fann) - FANN (Fast Artifical Neural Network) binding
 * [crystal-learn](https://github.com/pbrusco/crystal-learn) - Sklearn-like machine-learning library
 * [shainet](https://github.com/NeuraLegion/shainet) - SHAInet (Neural Network in pure crystal)
 * [tensorflow.cr](https://github.com/fazibear/tensorflow.cr) - Bindings for [TensorFlow](https://github.com/tensorflow/tensorflow)

## Markdown/Text Processors
 * [html-pipeline](https://github.com/huacnlee/html-pipeline) - HTML processing filters and utilities
 * [markd](https://github.com/icyleaf/markd) - Yet another markdown parser built for speed, Compliant to CommonMark specification

## Misc
 * [aasm.cr](https://github.com/veelenga/aasm.cr) - Easy to use finite state machine for Crystal classes
 * [any_hash.cr](https://github.com/Sija/any_hash.cr) - Recursive Hash with better JSON::Any included
 * [atomic_write.cr](https://github.com/chris-huxtable/atomic_write.cr) - Library for writing or apppending files atomically
 * [burocracia.cr](https://github.com/vnbrs/burocracia.cr) - burocracia.cr the dependecyless shard to validate, generate and format Brazilian burocracias such as CPF, CNPJ and CEP
 * [callbacks](https://github.com/vladfaust/callbacks.cr) - Expressive callbacks module
 * [circuit_breaker](https://github.com/TPei/circuit_breaker) - Implementation of the circuit breaker pattern
 * [compiled_license](https://github.com/elorest/compiled_license) - Compiles licenses into binary for complience with MIT when copying binary to system or container without the code
 * [crystal-binary_parser](https://github.com/DanSnow/crystal-binary_parser) - Binary parser
 * [crz](https://github.com/dhruvrajvanshi/crz) - Functional programming library
 * [emoji.cr](https://github.com/veelenga/emoji.cr) - Emoji library
 * [hoop](https://github.com/0x73/hoop) - Building native OSX apps
 * [html_builder](https://github.com/crystal-lang/html_builder) - DSL for creating HTML
 * [i18n.cr](https://github.com/vladfaust/i18n.cr) - Internationalization shard
 * [immutable](https://github.com/lucaong/immutable) - Implementation of thread-safe, persistent, immutable collections
 * [inflector.cr](https://github.com/phoffer/inflector.cr) - Singularize, pluralize, camelize, etc (port from ActiveSupport)
 * [lirith](https://github.com/lirith-engine/lirith) - Graphics engine
 * [m3u8](https://github.com/akiicat/m3u8) - Generate and parse m3u8 playlists for HTTP Live Streaming
 * [manual-generator](https://github.com/blocknotes/manual-generator) - Tool to generate PDF manuals from documentation sites
 * [message_verifier.cr](https://github.com/danielwestendorf/message_verifier.cr) - Verify and generate Rails `ActiveSupport::MessageVerifier` signed tokens
 * [pangu.cr](https://github.com/isaced/pangu.cr) - Paranoid text spacing in Crystal
 * [raytracer](https://github.com/l3kn/raytracer) - CPU Raytracer with examples
 * [retriable.cr](https://github.com/Sija/retriable.cr) - Simple DSL to retry failed code blocks
 * [tren](https://github.com/sdogruyol/tren) - Give your SQL some love
 * [ulid](https://github.com/SuperPaintman/ulid) - Universally Unique Lexicographically Sortable Identifier (ULID)

## Network Protocols
 * [bson.cr](https://github.com/jeromegn/bson.cr) - Native BSON implementation
 * [Crirc](https://github.com/Meoowww/Crirc) - IRC protocol implementation (Client, Server, Bots)
 * [crystal-json-socket](https://github.com/foi/crystal-json-socket) - JSON-socket client & server implementation. Inspired by and compatible with [node-json-socket](https://github.com/sebastianseilund/node-json-socket/) and [ruby-json-socket](https://github.com/foi/ruby-json-socket)
 * [fast_irc.cr](https://github.com/RX14/fast_irc.cr) - Fast IRC parser/generator
 * [gopher.cr](https://github.com/anicholson/gopher.cr) - Gopher server toolkit
 * [jwt](https://github.com/crystal-community/jwt) - Implementation of JWT (JSON Web Token)
 * [msgpack-crystal](https://github.com/crystal-community/msgpack-crystal) - MessagePack library
 * [OAuth](https://crystal-lang.org/api/OAuth.html) - OAuth consumer (Crystal stdlib)
 * [OAuth2](https://crystal-lang.org/api/OAuth2.html) - OAuth2 client (Crystal stdlib)
 * [OpenSSL](https://crystal-lang.org/api/OpenSSL.html) - bindings to libssl (Crystal stdlib)
 * [Socks](https://github.com/wontruefree/socks) - SOCKS proxy
 * [transfer_more](https://git.sceptique.eu/Sceptique/transfer_more) - Clone of transfer.sh to uploads files

## Networking
 * [ipaddress.cr](https://github.com/Sija/ipaddress.cr) - Library to handle IPv4 and IPv6 addresses

## ORM/ODM Extensions
 * [clear](https://github.com/anykeyh/clear) - ORM specialized to PostgreSQL only but with advanced features
 * [crecto](https://github.com/Crecto/crecto) - Database wrapper, based on Ecto
 * [granite](https://github.com/amberframework/granite) - ORM for Postgres, Mysql, Sqlite
 * [jennifer.cr](https://github.com/imdrasil/jennifer.cr) - Active Record pattern implementation with flexible query chainable builder and migration system
 * [ohm-crystal](https://github.com/soveran/ohm-crystal) - Object-hash mapping library for Redis
 * [onyx-sql](https://github.com/onyxframework/sql) - DB-agnostic SQL ORM with beautiful DSL and type-safe Query builder
 * [record](https://github.com/luckyframework/record) - Type safe querying, saving and updating
 * [redis-tsv.cr](https://github.com/maiha/redis-tsv.cr) - Import and export data from Redis in TSV format
 * [stal-crystal](https://github.com/soveran/stal-crystal) - Set algebra solver for Redis
 * [topaz](https://github.com/topaz-crystal/topaz) - A simple and useful db wrapper

## Package Management
 * [CRelease](https://github.com/elorest/crelease) - Version and git tag manager that makes shard releases easy
 * [shards](https://github.com/crystal-lang/shards) - Dependency manager for the Crystal

## Processes and Threads
 * [await_async](https://github.com/anykeyh/await_async) - Add keywords await & async in Crystal Lang
 * [crystal-futures](https://github.com/dhruvrajvanshi/crystal-futures) - Future type implementation
 * [neph](https://github.com/tbrand/neph) - A modern command line job processor that can execute jobs concurrently
 * [promise](https://github.com/spider-gazelle/promise) - A Promise implementation with type inference

## Project Generators
 * [bindgencr](https://github.com/TechMagister/bindgencr) - Generator of bindings based on castxml output
 * [crystal_lib](https://github.com/crystal-lang/crystal_lib) - Automatic binding generator for native libraries
 * [fez](https://github.com/jwoertink/fez) - A Kemal application generator
 * [kgen](https://github.com/kemalyst/kemalyst-generator) - Kemalyst command line tool for console, init, generate (scaffolding), and watch.
 * [libgen](https://github.com/olbat/libgen) - Automatic bindings generator configured using JSON/YAML files
 * [wasp](https://github.com/icyleaf/wasp) - Static Site Generator

## Queues and Messaging
 * [amqp.cr](https://github.com/datanoise/amqp.cr) - AMQP 0.9.1 client with RabbitMQ extensions
 * [dispatch](https://github.com/bmulvihill/dispatch) - In memory asynchronous job processing
 * [mosquito](https://github.com/robacarp/mosquito/) - Redis backed periodic and ad hoc job processing
 * [sidekiq.cr](https://github.com/mperham/sidekiq.cr) - Simple, efficient job processing

## Routing
 * [crouter](https://github.com/jreinert/crouter) - A standalone router
 * [orion](https://github.com/obsidian/orion) - A minimal, rails-esque routing library
 * [router.cr](https://github.com/tbrand/router.cr) - Minimum but powerful http router for HTTP::Server
 * [toro](https://github.com/soveran/toro) - Tree Oriented Routing

## Scheduling
 * [cron_scheduler](https://github.com/kostya/cron_scheduler) - Job scheduler with crontab patterns
 * [crystime](https://gitlab.com/crystallabs/crystime) - Advanced time, calendar, schedule, and remind library
 * [schedule.cr](https://github.com/hugoabonizio/schedule.cr) - Run periodic tasks
 * [tasker](https://github.com/spider-gazelle/tasker) - A high precision scheduler including timezone aware cron jobs

## Science and Data analysis
 * [linalg](https://github.com/konovod/linalg) - Linear algebra library inspired by MATLAB and SciPy.linalg
 * [predict.cr](https://github.com/RX14/predict.cr) - Satellite prediction library using the sgp4 model
 * [stats](https://git.sceptique.eu/Sceptique/stats) - An expressive implementation of statistical distributions

## Search
 * [hermes](https://github.com/imdrasil/hermes.cr) - Data Mapper pattern implementation for ElastiSearch
 * [query-builder](https://github.com/izniburak/query-builder) - Sql Query Builder library
 * [query.cr](https://github.com/waterlink/query.cr) - Query abstraction
 * [soegen](https://github.com/Ragmaanir/soegen) - Elasticsearch client for Crystal similar to the stretcher gem for ruby

## Serverless Computing
 * [crystal_openfaas](https://github.com/TPei/crystal_openfaas/) - Template to enable crystal as first class citizens in OpenFaaS
 * [FaaStRuby](https://faastruby.io) - Serverless Software Development Platform for Ruby and Crystal.
 * [gcf.cr](https://github.com/sam0x17/gcf.cr) - Managed execution of Crystal in Google Cloud Functions

## System
 * [baked_file_system](https://github.com/schovi/baked_file_system) - Virtual file system implementation
 * [hardware](https://github.com/crystal-community/hardware) - Get CPU, Memory and Network informations of the running OS and its processes
 * [rcpu](https://github.com/ddfreyne/rcpu) - A virtual machine emulator and assembler

## Task management
 * [cake](https://github.com/axvm/cake) - Production-ready Make-like utility tool
 * [sam](https://github.com/imdrasil/sam.cr) - Another one Rake-like task manager with namespacing and arguments system

## Template Engine
 * [crinja](https://github.com/straight-shoota/crinja) - An implementation of the [Jinja2 template engine](http://jinja.pocoo.org/)
 * [crustache](https://github.com/MakeNowJust/crustache) - [{{Mustache}}](https://mustache.github.io) for Crystal
 * [ECR (Embedded Crystal)](https://crystal-lang.org/api/ECR.html) - compile time template language which uses plain crystal expressions (Crystal stdlib)
 * [Kilt](https://github.com/jeromegn/kilt) - Abstraction layer for template engines
 * [Slang](https://github.com/jeromegn/slang) - Lightweight, terse, templating language inspired by Ruby's Slim
 * [teeplate](https://github.com/mosop/teeplate) - A library for rendering multiple template files
 * [temel](https://github.com/f/temel) - Extensible HTML::Builder alternative for Crystal, supports custom tag definitions

## Testing
 * [coverage](https://github.com/anykeyh/crystal-coverage) – Generate cover report for your crystal code
 * [crotest](https://github.com/emancu/crotest) - A tiny and simple test framework
 * [crystal-clear](https://github.com/Groogy/crystal-clear) - Design by Contract Library
 * [crytic](https://github.com/hanneskaeufler/crytic) - Mutation testing framework
 * [LuckyFlow](https://github.com/luckyframework/lucky_flow) - Automated browser tests similar to Capybara
 * [mass-spec](https://github.com/c910335/mass-spec) - Web API testing library
 * [microtest](https://github.com/Ragmaanir/microtest) - Small opinionated testing library focusing on power asserts
 * [minitest.cr](https://github.com/ysbaddaden/minitest.cr) - Library for unit tests and assertions
 * [mocks.cr](https://github.com/waterlink/mocks.cr) - Mocking library for Crystal
 * [Spec](https://crystal-lang.org/api/Spec.html) - spec framework (Crystal stdlib)
 * [timecop.cr](https://github.com/crystal-community/timecop.cr) - Library for mocking with `Time.now`. Inspired by the [timecop ruby gem](https://github.com/travisjeffery/timecop)
 * [webdriver_pump](https://github.com/bwilczek/webdriver_pump) - Page Object library. Inspired by Ruby's [WatirPump](https://github.com/bwilczek/watir_pump)
 * [webmock.cr](https://github.com/manastech/webmock.cr) - Library for stubbing `HTTP::Client` requests

## Third-party APIs
 * [aws-signer.cr](https://github.com/beanieboi/aws-signer.cr) - This library signs your HTTP requests using AWS v4
 * [awscr-s3](https://github.com/taylorfinnell/awscr-s3) - AWS S3 interface
 * [awscr-signer](https://github.com/taylorfinnell/awscr-signer) - Sign HTTP::Request objects and generate presigned post forms
 * [bugsnag.cr](https://github.com/gewo/bugsnag.cr) - Bugsnag exception notifier and sidekiq middleware
 * [crystal-darksky](https://github.com/sb89/crystal-darksky) - Wrapper for the [Dark Sky](https://darksky.net) API
 * [crystal-github](https://github.com/felipeelias/crystal-github) - Wrapper for the [Github](https://github.com/) API
 * [crystal-monzo](https://github.com/barisbalic/crystal-monzo) - A client for the [Monzo API](https://monzo.com/docs/)
 * [crystal-swapi](https://github.com/sb89/crystal-swapi) - Star Wars API (SWAPI) wrapper
 * [crystal_slack](https://github.com/manastech/crystal_slack) - A tool that parses Slack slash commands or send incoming web hooks
 * [discordcr](https://github.com/meew0/discordcr) - A minimalist Discord API library
 * [GDAX](https://github.com/mccallofthewild/gdax) - GDAX REST and WebSocket API Wrapper with request signing
 * [gitlab.cr](https://github.com/icyleaf/gitlab.cr) - GitLab API wrapper
 * [google_maps_api](https://github.com/fridgerator/google_maps_api) - Google Maps API
 * [hncr](https://github.com/Gangwolf/hncr) - A Hacker News API wrapper
 * [mixpanel-crystal](https://github.com/petoem/mixpanel-crystal) - A library for sending events to Mixpanel
 * [nexmo-crystal](https://github.com/timcraft/nexmo-crystal) - [Nexmo REST API](https://developer.nexmo.com/) client
 * [open_exchange_rates](https://github.com/osfx/open_exchange_rates) - A library to access [Open Exchange Rates](https://openexchangerates.org/) API
 * [pinboard.cr](https://github.com/oz/pinboard.cr) - [Pinboard](https://pinboard.in) API
 * [raven.cr](https://github.com/sija/raven.cr) - Raven is a client for [Sentry](https://github.com/getsentry/sentry)
 * [slack.cr](https://github.com/DougEverly/slack.cr) - A Slack [Real Time Messaging API](https://api.slack.com/rtm) WebSocket client library
 * [telegram_bot](https://github.com/hangyas/telegram_bot) - A wrapper for the Telegram Bot API
 * [twitter-crystal](https://github.com/sferik/twitter-crystal) - A library to access the Twitter API

## Validation
 * [accord](https://github.com/neovintage/accord) - Shareable validation library for Crystal Objects
 * [CrSerializer](https://github.com/blacksmoke16/CrSerializer) - Extensible annotation based serialization/deserialization/validation library
 * [denetmen](https://github.com/izniburak/denetmen) - Micro check library that patches Crystal stdlib
 * [validations](https://github.com/vladfaust/validations.cr) - Validations mixin

## Web Frameworks
 * [amber](https://github.com/amberframework/amber) - Open source efficient and cohesive web application framework
 * [kemal](https://github.com/kemalcr/kemal) - Lightning Fast, Super Simple web framework. Inspired by Sinatra
 * [lattice-core](https://github.com/jasonl99/lattice-core) - A WebSocket-first object-oriented framework (based on Kemal)
 * [lucky](https://github.com/luckyframework/lucky) - Catch bugs early, forget about most performance issues, and spend more time on code instead of debugging and writing tests
 * [onyx-rest](https://github.com/onyxframework/rest) - REST API framework with type-safe params and separate business and rendering layers, based on [onyx-http](https://github.com/onyxframework/http)
 * [raze](https://github.com/samueleaton/raze) - Modular, light web framework
 * [spider-gazelle](https://github.com/spider-gazelle/spider-gazelle) - A Rails esque web framework with a focus on speed and extensibility

## Web Servers
 * [fast-http-server](https://github.com/sdogruyol/fast-http-server) - Super fast, zero configuration command line HTTP Server
 * [prax.cr](https://github.com/ysbaddaden/prax.cr) - Rack proxy server for development
 * [salt](https://github.com/icyleaf/salt) - A Human Friendly Interface for HTTP server
 * [serve](https://github.com/SuperPaintman/serve) - Command line static HTTP server

# Community
 * [Crystal weekly newsletters](http://crystalweekly.com/)
 * [Gitter](https://gitter.im/crystal-lang/crystal)
 * [Google Group](https://groups.google.com/forum/?fromgroups#!forum/crystal-lang)
 * [IRC](http://irc.lc/freenode/crystal-lang) - #crystal-lang on Freenode
 * [Metaruby](https://metaruby.com/c/crystal-forum) - Crystal Forum on Metaruby
 * [Reddit](https://www.reddit.com/r/crystal_programming/)
 * [Stackoverflow](https://stackoverflow.com/tags/crystal-lang/info)

## Unofficial
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
 * [Fluence](https://github.com/crystallabs/fluence) - WYSIWYG wiki using markdown and Git
 * [icr](https://github.com/crystal-community/icr) - Interactive console for Crystal (like IRB for Ruby)
 * [Invidious](https://github.com/omarroth/invidious) - Invidious is an alternative front-end to YouTube
 * [mpngin](https://github.com/thewalkingtoast/mpngin) - A URL shortener with simple stats
 * [nes](https://github.com/romeroadrian/nes.cr) - A NES emulator
 * [quicktype](https://quicktype.io/) - Generate models and serializers from JSON, JSON Schema, GraphQL, and TypeScript
 * [shards.info](http://shards.info/) - Web service that lists all repositories on GitHub that have Crystal code in them. The sources are available on [GitHub](https://github.com/mamantoha/shards-info)
 * [wikicr](https://git.sceptique.eu/Sceptique/wikicr) - Wiki using git to manage revisions

# Tools
 * [ast_helper](https://github.com/bcardiff/crystal-ast-helper) - Helper tool to debug parser and formatter
 * [crystal-base](https://github.com/ruivieira/crystal-base) - CentOS base docker image for Crystal development
 * [crystal-ctags](https://github.com/SuperPaintman/crystal-ctags) - Ctags generator for Crystal
 * [crystal-dash-docset](https://github.com/Sija/crystal-dash-docset) - [Dash](https://kapeli.com/dash) docset generator
 * [helptransl8](https://github.com/papilip/helptransl8) - Tool for document translators

## DevOps
 * [ansible-crystal](https://github.com/CorbanR/ansible-crystal) - Ansible playbook for installing crystal
 * [capistrano-kemal](https://github.com/bitfex/capistrano-kemal) - Capistrano Plugin for Kemal
 * [crystal-cookbook](https://github.com/vjdhama/crystal-cookbook) - Chef cookbook for installing crystal
 * [DPPM](https://github.com/DFabric/dppm) - An easy, universal way to install and manage applications as packages (mostly Linux)

## Editor Plugins
 * Atom
   * [crystal-tools](https://atom.io/packages/crystal-tools) - Enables built in tools in Crystal compiler
   * [language-crystal-actual](https://atom.io/packages/language-crystal-actual) - Crystal language support in Atom
 * Emacs
   * [emacs-crystal-mode](https://github.com/dotmilk/emacs-crystal-mode) - Crystal language support for Emacs
   * [play-crystal.el](https://github.com/veelenga/play-crystal.el) - [play.crystal-lang.org](https://play.crystal-lang.org/#/cr) integration in Emacs
 * [scry](https://github.com/crystal-lang-tools/scry) - Code analysis server for Crystal implementing the [Language Server Protocol](https://microsoft.github.io/language-server-protocol/)
 * Spacemacs
   * [crystal-spacemacs-layer](https://github.com/juanedi/crystal-spacemacs-layer) - Spacemacs contribution layer for Crystal
 * Sublime
   * [sublime-crystal](https://github.com/crystal-lang-tools/sublime-crystal) - Crystal syntax highlighting for sublime Text
 * TextMate
   * [Crystal.tmbundle](https://github.com/crystal-lang-tools/Crystal.tmbundle) - Crystal syntax highlighting, compile, format command, snippets
 * Vim
   * [carcin.vim](https://github.com/MakeNowJust/carcin.vim) - Vim plugin to provide utility functions for carc.in
   * [vim-crystal](https://github.com/rhysd/vim-crystal) - Vim filetype support for Crystal
   * [vim-slang](https://github.com/elorest/vim-slang) - Vim filetype support for Slang Templating Engine
 * Visual Studio Code
   * [vscode-crystal](https://github.com/g3ortega/vscode-crystal) - Crystal language support in VSCode
   * [vscode-crystal-ide](https://github.com/crystal-lang-tools/crystal-ide) - Crystal IDE powered by [Language Server Protocol](https://code.visualstudio.com/blogs/2016/06/27/common-language-protocol)
   * [vscode-crystal-lang](https://github.com/crystal-lang-tools/vscode-crystal-lang) - Formatter, linter and syntax highlighting for `cr` and `ecr` files

## Shell plugins
 * [crun](https://github.com/Val/crun) - Crystal Run : shebang wrapper for Crystal
 * [crystal-zsh](https://github.com/veelenga/crystal-zsh) - .oh-my-zsh plugin
