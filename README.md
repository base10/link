# README

## Link: Keep and publish web links via HTML, RSS, and JSON

Welcome! Link is a demo application in use for RailsConf 2021 as part of the "[Deploying your Rails Application to Kubernetes](https://railsconf.com/program/workshops#session-1137)".

We'll use Link during the workshop to build a local Kubernetes environment and doing a three-step process for working with Kubernetes locally.

## Prerequisites

### Ruby and Rails

Link is a Rails application and requires Ruby 2.7.2. We use `rbenv` to run Ruby locally, but use whatever method you're comfortable with.

Link runs on Rails 6.1.3.1, the latest released version as of 2021-04-11.

NB: If you're running an older version of bundler, you will want to update that first: `gem install bundler`

### PostgreSQL

Link uses PostgreSQL as a relational database. Any recent version should work. Your local instance of PostgreSQL may or may not require a password. The default role for a local installation does not.

- I installed PostgreSQL through Homebrew: `brew install postgresql` on macOS
- Linux users should use their system's package manager
- Windows users can [download an interactive installer](https://www.postgresql.org/download/windows/)

### Redis

Link uses [Redis](https://redis.io) to run Sidekiq. The app is not doing much with Sidekiq, but we wanted to demonstrate it running as a concern to be aware of with running a Rails app in Kubernetes. NB: We're using the open source version of Redis, not Redis Enterprise. Any major version 4 or greater should be fine.

- macOS: Recommended install via Homebrew `brew install redis`
- Linux users should use their system's package manager
    - Ubuntu users, [there's an official PPA](https://redis.io/download#from-the-official-ubuntu-ppa)
    - Redis is also [available as a snap](https://redis.io/download#from-snapcraft)
- Windows: This appears to involve setting up the [Windows Subsystem for Linux](https://redislabs.com/blog/redis-on-windows-10/)
    - Candidly, we're not Windows users, so unfortunately, we're not going to be much help here

## Setup

**For the RailsConf 2021 workshop, fork this repository, instead of cloning it.**

### tl;dr

- Clone it
- `bundle install`
- Create a `.env` file and update it
- Create a `config/database.yml` file with the appropriate credentials and settings
- Create the databases and migrate them
- Fill-in seed data
- Start the app with Foreman
    `(bundle exec) foreman start`

### Stepwise

- Within the repository, `bundle install`
- Create a `.env` file
    - `cp .env.example .env`
- Edit `.env`
    - Rails port: Search and replace for `3000` with an available port. E.g. I use `4100`
    - Webpacker port: Search and replace for `3035` with an available port. I use `4135` for this
    - Adjust the `REDIS_URL` database number, if needed. The default is `15`
- Review `config/database.yml` file for appropriate settings
    - We left this as is, change it on your fork as necessary
- Create the database
    - Empty DB: `rails db:create`
        - `RAILS_ENV=test rails db:create`
    - Migrate: `rails db:migrate`
- Seed:

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
