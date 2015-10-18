# Installation

1. Install [Virtualbox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/)
2. Clone this repo to anywhere on your machine

        git clone git@github.com:erettsegik/erettsegik-vagrant.git
3. Clone the `erettsegik.hu` repo *inside* this one and rename it to `src`

        git clone git@github.com:erettsegik/erettsegik.hu.git
        mv erettsegik.hu src
4. `vagrant up` in the root folder of `erettsegik-vagrant`
5. (Optional) Ask @mici- for a proper database dump
