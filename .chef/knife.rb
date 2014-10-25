# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "kiowajoe"
client_key               "#{current_dir}/kiowajoe.pem"
validation_client_name   "jttech-validator"
validation_key           "#{current_dir}/jttech-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/jttech"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
