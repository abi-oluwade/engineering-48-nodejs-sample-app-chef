#
# Cookbook:: nodejsapp
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# imports and installs the node.js dependencies and libraries specified in the metadata.
include_recipe "nodejs::npm"
include_recipe "pm2"


nginx_install 'repo' do
  group 'apache'
  default_site_enabled true
end

remote_directory '/home/ubuntu/app' do
  source 'app'
  owner 'root'
  group 'root'
  mode '0777'
  recursive true
  action :create
end
