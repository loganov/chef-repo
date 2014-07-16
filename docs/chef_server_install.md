## Chef Server Installation - Run List

* All commands run as `'root'` or using `'sudo'`.

[TOC]

#### 1. Installation

##### 1. Install the Chef Client Omnibus package.
`root@chef-server:# curl -L https://www.opscode.com/chef/install.sh | sudo bash`

##### 2. Create skeleton directories for Chef Server.
`root@chef-server:# mkdir -p /var/chef/cache /var/chef/cookbooks/chef-server`

##### 3. Pull latest Chef Server recipe from OpsCode Git repository, or Sephora's Stash repository. 
`root@chef-server:# wget -qO- https://github.com/opscode-cookbooks/chef-server/archive/master.tar.gz | tar xvzC /var/chef/cookbooks/chef-server --strip-components=1`

##### 4. Deploy custom Chef Server recipe.
`root@chef-server:# chef-solo -o 'recipe[chef-server::default]'`

#### 2. Configuration

##### 1. Login to Chef Web UI
* https://fqdn-of-server
* admin/p@ssw0rd1

##### 2. Change Admin Password, Regenerate Private Key
* Reset password on first login.
* Select 'Regenerate Private Key'
* Save User

##### 3. Save the Admin Private Key, to admin.pem
* Copy the newly generated private key into `'admin.pem'`
* Store this key safely. It cannot be retrieved again without regenerating. 