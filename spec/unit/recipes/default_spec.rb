#
# Cookbook Name:: chef_hostname
# Spec:: default
#

require 'spec_helper'

describe 'chef_hostname::default' do
  context 'When running the default recipe in the unit testing cookbook' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge('unit::default')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
