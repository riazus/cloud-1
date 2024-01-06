Vagrant.configure("2") do |config|
  config.vm.box = "debian/bullseye64"
  config.vbguest.installer_options = { allow_kernel_upgrade: true } 

  config.vm.provision "file", source: "src", destination: "/tmp/src"

  config.vm.provision "shell", inline: <<-SHELL
    # sudo yum install epel-release -y
    # sudo yum install wget -y
    # #sudo yum install ansible -y
    # sudo yum install openssl-devel bzip2-devel libffi-devel -y
    # sudo yum groupinstall "Development Tools" -y

    #sudo apt update
  

    # Copy files from the host to the VM
    mv /tmp/src /home/vagrant
  SHELL
end