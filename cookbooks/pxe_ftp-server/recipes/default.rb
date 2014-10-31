#
# Cookbook Name:: pxe_ftp-server
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

include_recipe 'pxe_dust::default'

include_recipe 'ftp-server::default'
