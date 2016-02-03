# Dependencies

 - [Virtualbox](https://www.virtualbox.org/)
 - [Vagrant](https://www.vagrantup.com/)

# Installation

1. Clone this repo to anywhere on your machine

        git clone git@github.com:martonbognar/vagrant-nginx-php-mysql.git
3. Clone your repo *inside* this one and rename it to `src`, or start building your site inside a newly created `src` folder

        git clone your-git-url-here.git src
4. By default, the setup script looks for a `schema.sql` file inside the `src` folder, and creates a database called `lorem` based on it. You can change all of this in the `provision/setup.sh` file, by editing the relevant lines (1; 2; 36-37)
5. You can add or edit port forwarding options in `Vagrantfile`, by default you can access the site at `localhost:8080`
6. To add rewrite rules or change other nginx-related settings, edit `provision/config/nginx_vhost`
7. After setting up, run `vagrant up` in the root folder of `vagrant-nginx-php-mysql`

# Usage

 - To stop the VM, run `vagrant halt`, to start it up again, `vagrant up`
