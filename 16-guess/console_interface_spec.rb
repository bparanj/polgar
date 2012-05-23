shared_examples "Console Interface" do

  describe "Console Interface" do

    it "should implement the console interface: output(arg)" do
      @object.should respond_to(:output).with(1).argument
    end
    
    it "should implement the console interface: prompt(arg)" do
      @object.should respond_to(:prompt).with(1).argument
    end

  end
end
