#
# Cookbook Name:: loganov-apache2
# Recipe:: default
#
# Copyright 2014, Loganov Industries, LLC
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache2::default'

if platform_family?('centos', 'fedora', 'rhel')
  package node['apache']['package']

elsif platform_family?('debian', 'ubuntu')
  package node['apache']['package']

else
	# throw error
	# p('This platform is not supported by this cookbook.')
end

#apache_module 'rewrite' do
#  conf true
#end