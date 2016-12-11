#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "chef-client"
include_recipe "apt"
include_recipe "ntp"

chef_gem 'ipaddress'
require 'ipaddress'

ip = '10.10.0.0/24' 
mask = netmask(ip) # here we use the library method
Chef::Log.info("Netmask of #{ip}:#{mask}")


template '/tmp/message' do 
  source 'message.erb'
  variables(
   hi:'Hallo',
   world: 'Weltt',
   from: node['fqdn']
  )
end

capistrano_deploy_dirs do
  deploy_to "srv"
end

