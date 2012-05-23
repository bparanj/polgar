require_relative 'console_interface_spec'
require_relative 'standard_output'

describe StandardOutput do
  
  before(:each) do
    @object = StandardOutput.new
  end
  
  it_behaves_like "Console Interface"
  
end