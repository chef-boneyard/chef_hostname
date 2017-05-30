name             "chef_hostname"
maintainer       "Chef Software, Inc."
maintainer_email "cookbooks@chef.io"
license          "Apache-2.0"
description      "Configures the hostname on a node"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.5.0"
source_url       "https://github.com/lamont-cookbooks/chef_hostname"
issues_url       "https://github.com/lamont-cookbooks/chef_hostname/issues"

chef_version     ">= 12.7" if respond_to?(:chef_version)

%w{redhat centos scientific oracle fedora ubuntu debian linuxmint suse opensuse opensuseleap freebsd netbsd mac_os_x
   solaris2 gentoo arch nexus}.each do |platform|
  supports platform
end
