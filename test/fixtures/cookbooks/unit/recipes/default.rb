#
# Cookbook:: fake
# Recipe:: default
#
# Copyright:: 2016, The Authors, All Rights Reserved.

hostname "foobar.example.com"

file "/tmp/node-machinename" do
  content node["machinename"]
end

file "/tmp/bin-hostname" do
  content `/bin/hostname`
end

file "/tmp/node-fqdn" do
  content node["fqdn"]
end

file "/tmp/node-hostname" do
  content node["hostname"]
end

file "/tmp/node-domain" do
  content node["domain"]
end
