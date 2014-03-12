## `vagrant-l1f7`

A Vagrantfile setup that aims to work with the majority of [@l1f7](https://github.com/l1f7)'s projects.

### Don't have Vagrant installed?

* Head to the [downloads page on the Vagrant site](http://www.vagrantup.com/downloads.html) and run the installer you need.
* Make sure you have a version of [VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed, too. Any version that's 4.3.0 or above should be fine.

### Get started

* Clone this repo down, and then place the root of your project in `./app`.
* `cd` into the root of this repo
* Run `vagrant up`.
  * *(If it asks you which network interface to connect to, it's usually the first one. Just choose the one that you use to connect to the internet yourself.)*
* Run `vagrant ssh` to get into the VM.

*You might want to also run `sudo apt-get update && sudo apt-get upgrade -y` on first SSH, too.*

### What this box comes with

* Python 2.7.6
* pip 1.4.1
* libjpeg, libpng, and other PIL dependencies (just in case)
* ~~Postgres~~ (eventually), this'll require a bit of discussion
