
### Intention

This project is intended to provide a base VM that can be used to serve shiny applications locally without having to install shiny-server on your own machine. This can be useful for development puropses. People who find this useful are encouraged to clone the repo and use the VM or fork it and merge their own applications into their fork. Contributions that aim to improve the usefulness of the base VM are of course welcome.

### Setup instructions

1. Download and install Oracle Virtual Box [here](http://download.virtualbox.org/virtualbox/4.2.0/)
2. Download and install Vagrant [here](https://www.vagrantup.com/downloads)
3. Install Virtual Box Guest Additions: `$ vagrant plugin install vagrant-vbguest`
4. Checkout this repository: `$ git clone https://github.com/mikehumphrey/vagrant-shiny-dev.git`
5. Navigate to the repository folder locally: `cd vagrant-shiny-dev`
6. Run: `vagrant up`
7. Shiny server is now visible at `localhost:3838` on your machine.

### Workflow

Put your apps in `vagrant-shiny-dev/apps` and they will be visible at `localhost:3838/apps/` on your machine.
