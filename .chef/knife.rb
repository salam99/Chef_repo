# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "salam99"
client_key               "#{current_dir}/salam99.pem"
chef_server_url          "https://api.chef.io/organizations/aqib"
cookbook_path ["#{current_dir}/../site-cookbooks","#{current_dir}/../cookbooks"]
cache_type                "BasicFile"
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
verify_api_cert            true

cookbook_copyright        "Mohammed Salam"
cookbook_email            "salam9920@gmail.com"
cookbook_license          "apachev2"

# https://console.aws.amazon.com/iam/home?region=us-east-1#security_credential

knife[:aws_access_key_id]     = "AKIAJXGALLGNCXJJI33A"
knife[:aws_secret_access_key] = "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"
knife[:region]                = "us-west-2"

# https://cloud.digitalocean.com/settings/applications

knife[:digital_ocean_access_token] = "3ff4635bfe105d14cad4676519a5f0c2cbc7b89471ae2bdfdb1ff27bfdbc9dfa"

# https://manage.windowsazure.com/publishsettings/index?client=xplat
# make sure to rename the downloaded publishsettings file as myazure.publishsettings and place in .chef folder

knife[:azure_publish_settings_file] = "#{current_dir}/myazure.publishsettings"
knife[:azure_source_image] = "b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu-14_04_4-LTS-amd64-server-20160627-en-us-30GB"

#Uncomment this line after you have created encryption secret
knife[:secret_file] = "#{current_dir}/encrypted_data_bag_secret"
knife[:editor]="gedit"
