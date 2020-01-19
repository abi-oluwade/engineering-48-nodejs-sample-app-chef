#
# Cookbook:: nodejsapp
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# imports and installs the node.js dependencies and libraries specified in the metadata.
include_recipe "apt"
include_recipe "nodejs"

apt_update "update_sources" do
  action :update
end

package "nginx"

nodejs_npm "pm2"

# nginx_install 'repo' do
#   group 'apache'
#   default_site_enabled true
# end

remote_directory '/home/vagrant/app' do
  source 'app'
  owner 'root'
  group 'root'
  mode '0777'
  recursive true
  action :create
end

service 'nginx' do
  action :start
end

service 'nginx' do
  action :enable
end
