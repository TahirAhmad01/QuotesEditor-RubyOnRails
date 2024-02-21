#!/usr/bin/env bash
# exit on error
set -o errexit

rm -rf config/credentials.yml.enc
EDITOR="mate --wait" bin/rails credentials:edit

yarn install --force
bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean