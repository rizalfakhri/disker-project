Vagrant.configure("2") do |config| 

  # Set memory size
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  # Enable Port Forwarding
  config.vm.network "private_network", ip: "30.12.20.19"
  config.vm.network "forwarded_port", guest: 15672,  host: 15672, auto_correct: true
  config.vm.network "forwarded_port", guest: 25672,  host: 25672, auto_correct: true
  config.vm.network "forwarded_port", guest: 5672,  host: 5672, auto_correct: true
  config.vm.network "forwarded_port", guest: 4369,  host: 4369, auto_correct: true

  # Set the base image  
  config.vm.box = "ubuntu/bionic64"

  # Install Docker
  config.vm.provision :docker
  config.vm.provision :docker_compose

  # Install Required Software
  config.vm.provision "shell", path: "scripts/install-dependencies.sh"

  # Configure VIM
  config.vm.provision "shell", path: "scripts/configure-vim.sh"

  # Provision Services
  config.vm.provision "shell", path: "scripts/provisions.sh"

end
