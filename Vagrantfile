Vagrant.configure("2") do |config|

    config.vm.box = "hashicorp/precise32"

    config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true

    config.vm.synced_folder ".", "/var/www", create: true, group: "www-data", owner: "www-data"

    config.vm.provision "shell" do |s|
        s.path = "provision/setup.sh"
    end

    config.vm.define "vagrantVM"

end
