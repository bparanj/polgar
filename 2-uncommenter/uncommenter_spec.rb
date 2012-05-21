require_relative 'uncommenter'
require 'stringio'

describe Uncommenter do

  it "should uncomment a given file" do

    input = <<-EOM
    # This is a comment.
      This is not a comment.
    # This is another comment
    EOM
    infile = StringIO.new(input)
    outfile = StringIO.new("")
    
    Uncommenter.uncomment(infile, outfile)
    
    result_string = outfile.string
    result_string.strip.should == "This is not a comment."
  end
  
end