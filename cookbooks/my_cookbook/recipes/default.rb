#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "chef-client"
include_recipe "apt"
include_recipe "ntp"

#Chef::Log.info("Netmask of #{ip}:#{mask}")

node.override['my_cookbook']['version'] = '1.5'
execute 'echo the cookbook version' do
  command "echo #{node['my_cookbook']['version']}"
end
