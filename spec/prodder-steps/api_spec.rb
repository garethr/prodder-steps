require 'spec_helper'

describe Prodder::Steps::Api do

  before(:each) do
    klass = Class.new {
      include Prodder::Steps::Api
    }
    @prodder = klass.new
  end

  describe 'cli_installed?' do
    context 'when called with a present binary' do
      it { @prodder.cli_installed?('ls').should == true }
    end
    context 'when called with a not present binary' do
      it { @prodder.cli_installed?('jagsdgajsdk').should == false }
    end
  end

  describe 'ensure_cli_installed' do
    context 'when called with a present binary' do
      it do
       expect {
         @prodder.ensure_cli_installed('ls')
       }.not_to raise_error
      end
    end
    context 'when called with a not present binary' do
      it do
        expect {
          @prodder.ensure_cli_installed('jagsdgajsdk')
        }.to raise_error
      end
    end
  end

end
