[![Build
Status](https://travis-ci.org/whatisinternet/HostileGit.png?branch=master)](https://travis-ci.org/whatisinternet/HostileGit) [![Gem
Version](https://badge.fury.io/rb/HostileGit.png)](http://badge.fury.io/rb/HostileGit) [![Code Climate](https://codeclimate.com/github/whatisinternet/HostileGit/badges/gpa.svg)](https://codeclimate.com/github/whatisinternet/HostileGit) [![Test Coverage](https://codeclimate.com/github/whatisinternet/HostileGit/badges/coverage.svg)](https://codeclimate.com/github/whatisinternet/HostileGit)

# HostileGit

The whole point of this gem is to be hostile to you for not committing
frequently.


By default every 10 minutes that a commit hasn't occurred, this will run:

```shell
git reset --hard HEAD
```

## Installation

Gem install the gem:

```shell
$ gem instal HostileGit
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install HostileGit

## Usage

Default

```shell
$ HostileGit
```

Custom timeout of 7 minutes
```shell
$ HostileGit 7
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/HostileGit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
