require 'em-rspec'

describe 'twitter streaming api consume functionality' do
  it 'executes specs within a reactor loop' do
    EM.reactor_running?.should be_true 
  end
end