VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # make this primary
  config.vm.define "chef-workstation" do | ws |
    ws.vm.box ="opscode-ubuntu-12.10-i386"
    ws.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.10-i386_chef-provisionerless.box"
    ws.vm.hostname = "my-chef-workstation"

    ws.vm.provision "shell", 
      path: "_vagrant_helpers/chef_ws_provisioner.sh",
      privileged: false
  end

end
