This is a chef repo to get you going. One of the first steps is to install chef-workstation. 

Its based on the starter kit when you sign up for Enterprise Chef. This has some minor modifications to preserve chef version across installs. Also gives an option to boot up a VM via Vagrant configured to be a chef workstation. 

#Which ruby version to use?

- If you are starting for the first time go with the latest stable - 2.1.x
- Else 1.9.x should be good enough
- [Set here for the VM](_vagrant_helpers/chef_ws_provisioner.sh)

#Installing natively on a Mac

- Install rbenv (via homebrew -> brew install rbenv ruby-build)
- Add rbenv to env - echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && source ~/.bash_profile
- rbenv rehash
- Note, the version number below includes patch level. Use the latest. 
- You can view by rbenv install --list
- rbenv install 2.1.0
- rbenv shell   2.1.0
- rbenv global  2.1.0
- Try ruby -v should give something like 

```
ruby -v
ruby 2.1.0p0 (2013-12-25 revision 44422) [x86_64-darwin13.0]
```
- gem install bundler
- bun


#Even quicker with a VM

If you don't want to install anything on your local workstation, I have included a config for VM which will install everything. 

###Pre-req

- Install Vagrant (vagrantup.com) 
- Install Virtualbox (Vmware Fusion not supported.. yet)

###Steps

In the directory containing _this_ Vagrantfile

```
vagrant up
vagrant ssh
```

That's it you have everything installed to play with chef. Try ``chef-client -v``


#What about .chef, knife config etc?

- You can simply create a .chef directory and drop in your knife.rb and *.pem files 
- _This_ directory containing the Vagrantfile is automatically shared with your VM at `/vagrant`


