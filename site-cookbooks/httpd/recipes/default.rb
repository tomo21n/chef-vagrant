
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
  action :install
end
service "httpd" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable , :start ]
end

directory "/var/www/html" do
  action :delete
end

directory "/vagrant/www/" do
  owner "vagrant"
  group "vagrant"
  action :create
end

bash "install_something" do
  user "root"
  code <<-EOH
  ln -fs /vagrant/www var/www/html
  EOH
end
