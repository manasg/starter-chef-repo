#!/bin/bash

# Adapted from https://learnchef.opscode.com/quickstart/workstation-setup/#linux

ruby_version="1.9.3-p484"

echo "Running this script as `whoami` - who should have sudo permissions"

echo "Updating apt"
echo 
sudo apt-get update -y
sudo apt-get install git -y

echo "Installing rbenv"
echo 
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> .bash_profile
echo 'eval "$(rbenv init -)"' >> .bash_profile
source ~/.bash_profile

echo "Installing ruby-build"
echo
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv rehash

echo "Installing ruby version $ruby_version via rbenv"
echo
rbenv install $ruby_version
rbenv shell $ruby_version
rbenv global $ruby_version
echo "Ruby version now `ruby -v`"

echo "Installing bundler"
echo
gem install bundler
rbenv rehash

echo "Installing chef via Gemfile.lock"
cd /vagrant/
bundle install
rbenv rehash

echo "chef installed version `chef-client -v`"

echo "Done"
