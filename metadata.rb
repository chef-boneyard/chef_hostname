name             "chef_hostname"
maintainer       "Chef Software, Inc."
maintainer_email "cookbooks@chef.io"
license          "Apache 2.0"
description      "Configures the hostname on a node"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "0.4.2"
source_url       "https://github.com/lamont-cookbooks/chef_hostname"
issues_url       "https://github.com/lamont-cookbooks/chef_hostname/issues"

depends "compat_resource"

chef_version "~> 12.1" if respond_to?(:chef_version)

%w{redhat centos scientific oracle fedora ubuntu debian linuxmint suse opensuse freebsd netbsd mac_os_x
   solaris gentoo arch nexus}.each do |platform|
  supports platform
end
