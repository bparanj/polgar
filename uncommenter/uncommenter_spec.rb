require_relative 'uncommenter'

describe Uncommenter do

  it "should uncomment a given file" do
    infile = File.new(Dir.pwd + "/uncommenter/test_file.rb")
    outfile = File.new(Dir.pwd + "/uncommenter/test_file.rb.out", "w")
    
    Uncommenter.uncomment(infile, outfile)
    outfile.close
    
    resultfile = File.open(Dir.pwd + "/uncommenter/test_file.rb.out","r")
    result_string = resultfile.read
    result_string.should == "This is not a comment\n"
    resultfile.close
  end
  
end