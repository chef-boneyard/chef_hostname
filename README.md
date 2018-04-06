# NOTE THIS COOKBOOK HAS BEEN MOVED TO CORE CHEF AS OF CHEF 14.0.190

All new development will be in [core chef](https://github.com/chef/chef).

# chef_hostname Cookbook

Sets the node's hostname

- resource-driven cookbook
- supports FQDNs as hostnames
- persists after a reboot
- reloads ohai
- runs at compile-time (no need to use lazy)
- fixes up /etc/hosts so node["fqdn"] works
- runs nearly everywhere
- supports hostnamectl from systemd
- not tied to any other sysctl/etc-hosts cookbook dependecies

## Motivation

- Make strong guarantees that `node["fqdn"]` in other recipes "just works"
- No need to `lazy { node["fqdn"] }`
- Be very portable

## Requirements

## Platforms

- Ubuntu/Debian (and derivatives like Mint/Raspbian)
- RHEL/CentOS/Scientific/Oracle/Fedora (and derivatives like Pidora)
- OpenSUSE/SLES
- FreeBSD/OpenBSD/NetBSD
- Docker Containers
- MacOS
- Solaris
- Gentoo
- Arch
- Cisco Nexus
- Windows

Because of the way that this cookbook "Duck Types" the operating system, many systems that are not listed above have a decent chance of working out of the box provided that they implement a common pattern.

### Chef

- Chef 12.11+

### Cookbooks

- none

## Custom Resources

hostname Sets the hostname, ensures that reboot will preserve the hostname, re-runs the ohai plugin to set the node data.

### Actions

- :set: Ses the hostname

### Properties

- hostname: hostname to set
- compile_time: defaults to running at compile time, set to false to disable

### Chefspec / Testing

The action to be used in Chefspec/tests is "set" for exmaple:

```ruby
      it 'checks if hostname is being set' do
        expect(chef_run).to set_hostname('your.hostname.com')
      end
```

## Examples

Setting hostname to a string:

```ruby
hostname "foo.example.com"
```

Setting hostname to the node name:

```ruby
hostname node.name
```

Setting hostname to whatever attribute you like:

```ruby
hostname node['set_fqdn']
```

There is no need to "lazy" arguments to templates and filenames when this is used since it forces itself to run at compile-time.

```ruby
hostname node.name

# node["fqdn"] will be set here at compile time
template "/etc/motd" do
  source "motd.erb"
  variables({
    fqdn: node["fqdn"]
  })
end

# /bin/hostname will be set here at compile time
myhostname = `/bin/hostname`

file "/etc/issue" do
  content myhostname
end
```

The hostname resource will drop a line into /etc/hosts so that the `node["fqdn"]` can be resolved correctly, and will re-trigger ohai. The default is to use the node["ipaddress"]` value for the ipaddress on the /etc/hosts line. In order to override it:

```ruby
hostname node["cloud"]["public_hostname"] do
  ipaddress node["cloud"]["public_ipv4"]
end
```

In order to override the editing of the /etc/hosts file pass nil for the ipaddress (note that if you edit the /etc/hosts file you will be responsible for also reloading the ohai plugin and you will want to do both at compile-time yourself in order for `node["fqdn"]` to resolve)

```ruby
hostname node.name do
  ipaddress nil
end
```

Aliases can also be added to the line that hostname adds to /etc/hosts:

```ruby
hostname node.name do
  ipaddress "259.1.1.1"
  aliases [ "klowns.car.local", "yolo" ]
end
```

## Notes

There are no recipes in this cookbook, the resource is meant to be used in your own custom recipes. There are no attributes in this cookbook, you can drive the resource off of whatever attribute(s) you like.

Docker container hostnames do not persist after restarts due to limitations of docker.

## TODO

- fix setting node['fqdn'] correctly on windows
- aix
- xenserver (probably already supported via RHEL)
- test: exherbo, alpine, slackware, rapsbian, pidora
- smartos, omnios, openindiana, opensolaris, nexentacore?

## Maintainers

This cookbook is maintained by Chef's Community Cookbook Engineering team. Our goal is to improve cookbook quality and to aid the community in contributing to cookbooks. To learn more about our team, process, and design goals see our [team documentation](https://github.com/chef-cookbooks/community_cookbook_documentation/blob/master/COOKBOOK_TEAM.MD). To learn more about contributing to cookbooks like this see our [contributing documentation](https://github.com/chef-cookbooks/community_cookbook_documentation/blob/master/CONTRIBUTING.MD), or if you have general questions about this cookbook come chat with us in #cookbok-engineering on the [Chef Community Slack](http://community-slack.chef.io/)

## License

```

Copyright:: 2016-2016, Chef Software, Inc

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
