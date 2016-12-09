#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
<<<<<<< HEAD
include_recipe "chef-client"
include_recipe "apt"
include_recipe "ntp"

file "/tmp/local_mode.txt" do
	content "create by chef client local mode"
	end
=======
>>>>>>> deca7c98ab6173abb0ac3d00ca450b24d1ee113c
