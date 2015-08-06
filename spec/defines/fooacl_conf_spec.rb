require 'spec_helper'

describe 'fooacl::conf', :type => :define do
  let :title do
    '/tmp/test.acl'
  end

  context 'with an array as permissions' do
    let :params do {
      'permissions' => ['user:myuser:rwx', 'group:mygroup:rwx'],
    } end
    it { should contain_concat__fragment('/tmp/test.acl') }
  end
end

