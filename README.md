This is a chef repo to get you going. One of the first steps is to install chef-workstation. 

Its based on the starter kit when you sign up for Enterprise Chef. This has some minor modifications to preserve chef version across installs. Also gives an option to boot up a VM via Vagrant configured to be a chef workstation. 

Installing natively on a Mac
--

- Install rbenv (via homebrew -> brew install rbenv ruby-build)
- Add rbenv to env - echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && source ~/.bash_profile
- rbenv rehash
- Note, the version number below includes patch level. Use the latest. 
- You can view by rbenv install --list
- rbenv install 1.9.3-p484
- rbenv shell   1.9.3-p484
- rbenv global  1.9.3-p484
- Try ruby -v should give something like 

```
ruby -v
ruby 1.9.3p484 (2013-11-22 revision 43786) [x86_64-darwin13.0.0]
```
- gem install chef

Even quicker with a VM
--

If you don't want to install anything on your local workstation, I have included a config for VM which will install everything. 

- Install Vagrant (vagrantup.com)
- vagrant up (in the directory containing Vagrantfile)
- vagrant ssh



