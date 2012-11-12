require_relative 'console_interface_spec'
require_relative 'standard_console'

describe StandardConsole do
  
  before(:each) do
    @object = StandardConsole.new
  end
  
  it_behaves_like "Console Interface"
  
end