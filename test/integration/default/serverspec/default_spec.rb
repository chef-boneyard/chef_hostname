require 'spec_helper'

describe 'unit::render' do
  # tests that un-lazy node["machinename"] renders correctly
  describe file('/tmp/node-machinename') do
    its(:content) { should match(/^foobar.example.com$/) }
  end

  # tests that un-lazy `hostname` renders correctly
  describe file('/tmp/bin-hostname') do
    its(:content) { should match(/^foobar.example.com$/) }
  end

  # tests that un-lazy node["fqdn"] renders correctly
  describe file('/tmp/node-fqdn') do
    its(:content) { should match(/^foobar.example.com$/) }
  end

  # tests that un-lazy node["domain"] renders correctly
  describe file('/tmp/node-domain') do
    its(:content) { should match(/^example.com$/) }
  end

  # tests that un-lazy node["hostname"] renders correctly
  describe file('/tmp/node-hostname') do
    its(:content) { should match(/^foobar$/) }
  end

  # tests that we actually set the hostname via(/bin/)hostname
  describe command('/bin/hostname') do
    its(:stdout) { should match(/^foobar.example.com$/) }
  end

  # UBUNTU/DEBIAN
  describe file('/etc/hostname'), if: %w(debian ubuntu).include?(os[:family]) do
    its(:content) { should match(/^foobar.example.com$/) }
  end

  # REDHAT 5/6
  describe file('\($1\)network'), if: os[:family] == 'redhat' && os[:release].to_f < 7 do
    its(:content) { should match(/^HOSTNAME=foobar.example.com$/) }
  end

  # REDHAT 7
  describe file('/etc/hostname'), if: os[:family] == 'redhat' && os[:release].to_f >= 7 do
    its(:content) { should match(/^foobar.example.com$/) }
  end

  describe command('/usr/bin/hostnamectl status'), if: os[:family] == 'redhat' && os[:release].to_f >= 7 do
    its(:stdout) { should match(/Static hostname:\s+foobar.example.com/) }
  end

  # FEDORA
  describe file('/etc/hostname'), if: os[:family] == 'fedora' && os[:release].to_f >= 18 do
    its(:content) { should match(/^foobar.example.com$/) }
  end

  describe command('/usr/bin/hostnamectl status'), if: os[:family] == 'fedora' && os[:release].to_f >= 18 do
    its(:stdout) { should match(/Static hostname:\s+foobar.example.com/) }
  end
end
