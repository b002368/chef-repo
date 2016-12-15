#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "chef-client"
include_recipe "apt"
include_recipe "ntp"

#Chef::Log.info("Netmask of #{ip}:#{mask}")

#hook = data_bag_item('hooks','request_bin')
#http_request 'callback' do
#  url hook['url']
#end
#

http_request 'callbacl' do
  url node['my_cookbook']['callback']['url']
  only_if {node['my_cookbook']['callback']['enable'] }
end

Chef::Log.info("==> Running on RedHat") if
  node.platform == 'redhat'

