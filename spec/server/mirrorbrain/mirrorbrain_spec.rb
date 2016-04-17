require_relative './../spec_helper'

describe 'mirrorbrain' do
  it_behaves_like "a standard Linux machine"

  describe service('apache2') do
    it { should be_enabled }
    it { should be_running }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe package('mirrorbrain') do
    it { should be_installed }
  end
end
