#
# Cookbook:: my_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "apt"
include_recipe "chef-client"
include_recipe "ntp"
include_recipe "apache2"