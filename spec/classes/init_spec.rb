require 'spec_helper'
describe 'setupbasepackages' do
  context 'with default values for all parameters' do
    it { should contain_class('setupbasepackages') }
  end
end
