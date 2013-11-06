#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%W{php php-pear php-mysql php-mbstring php-gd php-mcrypt php-pecl-apc}.each do |pkg|
  package pkg do
    action :install
  end
end
