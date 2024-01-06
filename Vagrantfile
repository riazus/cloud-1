Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  
  config.vm.define "ansible-controller"
  config.vm.hostname = "ansible-controller"

  config.vm.provision "file", source: "./src", destination: "/tmp/src"
  config.vm.provision "file", source: "./ssh-keys", destination: "/tmp/ssh-keys"
  config.vm.provider "virtualbox" do |v|
    v.name = "ansible-controller"
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.provision "shell", inline: <<-SHELL

    sudo apt-get -y update
    sudo apt -y install python3-pip 
    python3 -m pip install --user ansible
    sudo cp /home/vagrant/.local/bin/ansible  /usr/local/bin
  

    # Copy files from the host to the VM
    mv /tmp/src /home/vagrant
    mv /tmp/ssh-keys /home/vagrant/.ssh
  SHELL
end