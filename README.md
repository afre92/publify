# Publify

**The Ruby on Rails publishing software formerly known as Typo**

[![Build Status](https://travis-ci.org/publify/publify.svg?branch=master)](https://travis-ci.org/publify/publify)
[![Code Climate](https://codeclimate.com/github/publify/publify.svg)](https://codeclimate.com/github/publify/publify)
[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

## What's Publify?

Publify is a simple but full featured web publishing software. It's built
around a blogging engine and a small message system connected to Twitter.

Publify follows the principles of the IndieWeb, which are self hosting your Web
site, and Publish On your Own Site, Syndicate Everywhere.

Publify has been around since 2004 and is the oldest Ruby on Rails open source
project alive.

## Features

- A classic multi user blogging engine
- Short messages with a Twitter connection
- Text filters (Markdown, Textile, SmartyPants, @mention to link, #hashtag to link)
- A widgets system and a plugin API
- Custom themes
- Advanced SEO capabilities
- Multilingual : Publify is (more or less) translated in English, French,
  German, Danish, Norwegian, Japanese, Hebrew, Simplified Chinese, Mexican
  Spanish, Italian, Lithuanian, Dutch, Polish, Romanian…

## Demo site

You can [give Publify a try](https://demo-publify.herokuapp.com/)

The login / password [to the admin](https://demo-publify.herokuapp.com/admin)
are:

- Administrator: admin / admin123
- Publisher: demo / demo1234

The demo is reset every hour.

## Deploy to PROD

- Push latest to origin
- docker buildx build -t publify . --platform linux/amd64
- aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 345635700080.dkr.ecr.us-east-1.amazonaws.com

- docker tag publify:latest 345635700080.dkr.ecr.us-east-1.amazonaws.com/publify:latest
- docker push 345635700080.dkr.ecr.us-east-1.amazonaws.com/publify:latest

