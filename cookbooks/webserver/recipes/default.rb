#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#update the apt repo sitory
apt_update 'update'  do
	action :periodic
end

include_recipe "ntp"
include_recipe "chef-client::init_service"
include_recipe "apache2"
include_recipe "apache2::mod_ssl"



#start and enable services
%w(ntp chef-client apache2).each do |d| 
  service "#{d}" do
    action [ :enable, :start ]
  end
end

vhost = {
	serveradmin: 'kevin@example.com',
	servername: 'kevin.com',
	serveralias: %w( www.kevin.com demo.kevin.com test.kevin.com)
}