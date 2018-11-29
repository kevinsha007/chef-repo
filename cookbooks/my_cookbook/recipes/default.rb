#
# Cookbook:: my_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#update the apt repo sitory
apt_update 'update'  do
	action :periodic
end

include_recipe "ntp"
include_recipe "chef-client::init_service"

#start and enable services
%w(ntp chef-client).each do |d| 
  service "#{d}" do
    action [ :enable, :start ]
  end
end
