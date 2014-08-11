Tasks
-----
1.) Create Kickstart file.
2.) Create a set of recipes that can be used on RHEL and Debian.
3.) 

Kickstart (ks.cfg)
  *Optional - modded image, to have chef-client
iommu=soft
@Minimal
@Virtualization
@GNOME Desktop || @Server with GUI
Tweak Tools Settings
Printer
Steam

desktop vs. cloud attribute

### Round Two

#### `minimal install + compatability libraries`

#### `yum groupinstall "Server with GUI"`

#### `yum install mdadm`
* mdadm config file

#### `yum install gdisk + dependencies + CentOS-7 Key`
#### `create remaining parition due to deficiency in Anaconda installer. (/dev/sda4 - remaining space)`
#### `reboot`
* fix Kickstart file to solve partitioning issue

#### `modify Grub2 to fix IOMMU`
* grub.conf file

#### `username, sudo + wheel`
* sudoers


#### `yum update, reboot`
* craft "Golden" image for future builds

#### `activate volume groups` 

#### `mkdir /mnt/Incoming`

#### `git`
#### chef-client
* `curl -L https://www.opscode.com/chef/install.sh | bash`
* `git config --global user.name and user.email`
#### `yum install samba`
* samba conf file
* firewall port

#### `/etc/hostname`

#### `nvidia driver`
* reboot
#### `/etc/default/grub`
* add IOAPIC work around for broken 990FX sabertooth.
* iommu=soft

#### terminal options, colors, etc.
* Edit profile, rename to 'Default'.
* default size, 80x43
* black background, white text
* font size

#### sublime text editor, desktop and menu entries (*.desktop)
* /usr/share/applications/sublimetext2.desktop
* ~/Desktop/sublimetext2.desktop
* copy icon to /usr/share/pixmap

#### VirtualBox
* download and import key.asc
* download and localinstall package
##### Dependencies
* kernel-devel
* `export KERN_DIR`

#### vagrant
* package download and install
##### Dependencies
* libxslt
* libxml2
* libvirt-dev
* VIRTUALBOX - VBoxManage
* Digtal ocean .box image
#### `yum groupinstall "Virtualization Host"`
* both LXC and QEMU are installed by default
##### Plugins
* virtual-box plugin - True/False (vagrant-virtualbox)
* digitalocean - True/False (vagrant-digital_ocean)
* kvm - True/False

#### Google Chrome
* yum repo + key
* `yum install google-chrome`

#### Ruby
* compile from source

#### `sudo yum groupinstall "Development Tools"`

#### tweaks
* rename 'home' icon to 'Home' on desktop. 
* .desktop files for Sublime, Steam, Terminal
* $PATH
* .bashrc file, include DIGITAL_OCEEAN_CLIENT_ID
* .bashrc file, include DIGITAL_OCEAN_API_KEY

#### hosts file
* ip addresses of static boxes.


#### cpufreq auto installed