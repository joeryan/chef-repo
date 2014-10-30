#
# Cookbook Name:: ftp-server
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package 'vsftpd'

service 'vsftpd' do
  action [:start, :enable]
end

file '/etc/vsftpd/vsftpd.conf' do
# TODO add configuration changes
# anonymous_enable=NO
# local_enable=YES
# chroot_local_user=YES
end 

service 'iptables' do
  # action :stop
  # TODO add correct iptables entries for ftp access
end
