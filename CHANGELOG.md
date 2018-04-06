# chef_hostname Cookbook CHANGELOG

This file is used to list changes made in each version of the chef_hostname cookbook.

## 1.0.1 (2018-04-06)

- This cookbook has been deprecated as the hostname resource now ships in Chef 14. If you encounter issues with the resource please update to Chef 14 and file an issue against Chef if the problem continues.
- Dynamically update the EC2 config file on windows
- Remove Chefspec matchers as they're auto generated now

## 1.0.0 (2018-01-25)

- Update kitchen config
- Update hostname resource check for File check so that on SUSE systems doesn't fail.
- Require Chef 12.11 and use the built in docker helper
- Move all maintainer information to the readme
- The test cookbook is named test not fake

## 0.6.0 (2017-05-30)

- Added testing in Travis with Delivery local mode
- Require Chef 12.7+ in order to be Chef 13 compatible
- Use a SPDX standard license string

## [0.5.0](https://github.com/chef-cookbooks/chef_hostname/tree/0.5.0) (2017-02-27)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.4.2...0.5.0)

**Closed issues:**

- Missing dbus dependency on Ubuntu 16.04 LTS? [#25](https://github.com/chef-cookbooks/chef_hostname/issues/25)
- cloud-init resets hostname [#23](https://github.com/chef-cookbooks/chef_hostname/issues/23)

**Merged pull requests:**

- Require Chef 12.5+ and remove compat_resource dependency [#27](https://github.com/chef-cookbooks/chef_hostname/pull/27) ([tas50](https://github.com/tas50))
- Misc Updates [#21](https://github.com/chef-cookbooks/chef_hostname/pull/21) ([tas50](https://github.com/tas50))
- Fixed windows hostname issue [#20](https://github.com/chef-cookbooks/chef_hostname/pull/20) ([shinitiandrei](https://github.com/shinitiandrei))

## [v0.4.2](https://github.com/chef-cookbooks/chef_hostname/tree/v0.4.2) (2016-09-19)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.4.1...v0.4.2)

**Closed issues:**

- Multiple HOSTNAME lines added to /etc/sysconfig/network (CentOS 6.7) [#16](https://github.com/chef-cookbooks/chef_hostname/issues/16)

**Merged pull requests:**

- fix new chefstyle offsenses [#19](https://github.com/chef-cookbooks/chef_hostname/pull/19) ([lamont-granquist](https://github.com/lamont-granquist))
- Chef spec matchers [#18](https://github.com/chef-cookbooks/chef_hostname/pull/18) ([shinitiandrei](https://github.com/shinitiandrei))
- Fix duplicate HOSTNAME= on centos 6 [#17](https://github.com/chef-cookbooks/chef_hostname/pull/17) ([justyns](https://github.com/justyns))
- only unset atomic_updates on a docker guest [#15](https://github.com/chef-cookbooks/chef_hostname/pull/15) ([lamont-granquist](https://github.com/lamont-granquist))

## [v0.4.1](https://github.com/chef-cookbooks/chef_hostname/tree/v0.4.1) (2016-04-05)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.4.0...v0.4.1)

**Merged pull requests:**

- add a couple more supported platforms [#14](https://github.com/chef-cookbooks/chef_hostname/pull/14) ([lamont-granquist](https://github.com/lamont-granquist))
- Add supported platforms from README to metadata [#13](https://github.com/chef-cookbooks/chef_hostname/pull/13) ([robbkidd](https://github.com/robbkidd))

## [v0.4.0](https://github.com/chef-cookbooks/chef_hostname/tree/v0.4.0) (2016-03-22)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.3.1...v0.4.0)

**Merged pull requests:**

- Support Solaris 11 via svccfg [#12](https://github.com/chef-cookbooks/chef_hostname/pull/12) ([lamont-granquist](https://github.com/lamont-granquist))

## [v0.3.1](https://github.com/chef-cookbooks/chef_hostname/tree/v0.3.1) (2016-03-21)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.3.0...v0.3.1)

**Merged pull requests:**

- Add Gentoo support [#10](https://github.com/chef-cookbooks/chef_hostname/pull/10) ([lamont-granquist](https://github.com/lamont-granquist))
- Initial work on Solaris 10 [#9](https://github.com/chef-cookbooks/chef_hostname/pull/9) ([lamont-granquist](https://github.com/lamont-granquist))
- Duck type BSD systems better [#8](https://github.com/chef-cookbooks/chef_hostname/pull/8) ([lamont-granquist](https://github.com/lamont-granquist))
- more targetted about atomic updates [#7](https://github.com/chef-cookbooks/chef_hostname/pull/7) ([lamont-granquist](https://github.com/lamont-granquist))

## [v0.3.0](https://github.com/chef-cookbooks/chef_hostname/tree/v0.3.0) (2016-03-11)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.2.0...v0.3.0)

**Merged pull requests:**

- Fix fedora exit 1 from hostnamectl [#6](https://github.com/chef-cookbooks/chef_hostname/pull/6) ([lamont-granquist](https://github.com/lamont-granquist))
- Mac support and Linux reorganization [#5](https://github.com/chef-cookbooks/chef_hostname/pull/5) ([lamont-granquist](https://github.com/lamont-granquist))
- windows now parses, still fails to actually work [#4](https://github.com/chef-cookbooks/chef_hostname/pull/4) ([lamont-granquist](https://github.com/lamont-granquist))

## [v0.2.0](https://github.com/chef-cookbooks/chef_hostname/tree/v0.2.0) (2016-03-11)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.1.2...v0.2.0)

**Merged pull requests:**

- Fix for running in docker containers [#3](https://github.com/chef-cookbooks/chef_hostname/pull/3) ([lamont-granquist](https://github.com/lamont-granquist))

## [v0.1.2](https://github.com/chef-cookbooks/chef_hostname/tree/v0.1.2) (2016-03-11)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.1.1...v0.1.2)

## [v0.1.1](https://github.com/chef-cookbooks/chef_hostname/tree/v0.1.1) (2016-03-11)

[Full Changelog](https://github.com/chef-cookbooks/chef_hostname/compare/v0.1.0...v0.1.1)

**Merged pull requests:**

- Fixed idempotency issues on Ubuntu/Systemd [#2](https://github.com/chef-cookbooks/chef_hostname/pull/2) ([lamont-granquist](https://github.com/lamont-granquist))

## [v0.1.0](https://github.com/chef-cookbooks/chef_hostname/tree/v0.1.0) (2016-03-11)

- _This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)_
