## `vagrant-l1f7`

A Vagrantfile setup that aims to work with the majority of [@l1f7](https://github.com/l1f7)'s projects.

**Get started:**

* Clone this repo down, and then place the root of your project in `./app`.
* `cd` into the root of this repo
* Run `vagrant up`.
  * *(If it asks you which network interface to connect to, it's usually the first one. Just choose the one that you use to connect to the internet yourself.)*
* Run `vagrant ssh` to get into the VM.

*You might want to also run `sudo apt-get update && sudo apt-get upgrade -y` on first SSH, too.*

**What this box comes with:**

* Python 2.7.6
* pip 1.4.1
* libjpeg, libpng, and other PIL dependencies (just in case)
* ~~Postgres~~ (eventually), this'll require a bit of discussion
