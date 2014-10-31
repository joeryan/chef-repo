#
# Cookbook Name:: ftp-server
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

user "ftpsecure" do
  comment "secure ftp user"
  system true
  shell "/bin/false"
  action :create
end

package 'vsftpd'

template '/etc/vsftpd.conf' do
  source 'vsftpd.conf.erb'
# TODO add configuration changes
# anonymous_enable=NO
# local_enable=YES
# chroot_local_user=YES
end 

service 'vsftpd' do
  action [:stop, :start, :enable]
end


service 'iptables' do
  # action :stop
  # TODO add correct iptables entries for ftp access
end
