#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w(mysql-server mysql mysql-devel).each do |pkg|
  package pkg do
    action :install
  end
end

service 'mysqld' do
  action [:start, :enable]
end
