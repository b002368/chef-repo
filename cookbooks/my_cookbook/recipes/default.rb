#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe "chef-client"
include_recipe "apt"
include_recipe "ntp"

message = node['my_cookbook']['message']
Chef::Log.info("** Saying what I was told to say: #{message}")

