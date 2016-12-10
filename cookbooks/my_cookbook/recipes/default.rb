#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "chef-client"
include_recipe "apt"
include_recipe "ntp"


node.default['my_cookbook']['greeting'] = "Hello!Me"

template '/tmp/greeting.txt' do
    variables greeting: node['my_cookbook']['greeting'] 
end

