class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDseLPvlNtj0Lmd12OlX8L/Iy5reRyk2OQAOlHBhONuFnoiP+i2ab/tdtl38Z34toYTSktjW65cwHwp2Sb43EOWIk5wKtqgE8D5nNzfZMSWCXM8oJdsv89a2KClLePdM467Kjf7bjzRb4qIvlTcpWroFBDu37+UslTHV3ipA64ELmTUin5FC/wwkZOMtsC8OqkvBCV+Vq5rGAF/e8oEZwSQ+1gQjaSiNdjsCxxrtiFNqY41CMzRFiWBxiXL1fnko/kONmGfeA4eBhauzGReKZUllRNKbyBvwVLVfmEyfPcckgyRd2MmTKzrkkcCxwMg3avgz5JBFhgx0wXWaMaY7nBX',
  }
}
