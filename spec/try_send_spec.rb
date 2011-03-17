require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Object, '#try_send' do
  before(:each) do
    @str = 'a string'
  end

  context "when an undefined method is passed then" do
    it "prevents a NoMethodError halting a chain of method calls" do
      lambda { @str.try_send(:monkey_nuts).reverse }.should_not raise_error(NoMethodError)
    end

    it "returns the receiving object" do
      @str.try_send(:monkey_nuts).should equal(@str)
    end
  end

  context "when the passed condition is true then" do
    it "sends the passed method to the receiver" do
      @str.should_receive(:reverse)
      @str.send_if(:reverse) {true}
    end

    it "returns the result of the passed method" do
      @str.send_if(:reverse) {true}.should == 'a string'.reverse
    end
  end

  context "when the passed condition is false then" do
    it "it does not send the passed method to the receiver" do
      @str.should_not_receive(:reverse)
      @str.send_if(:reverse) {false}
    end

    it "returns the receiver" do
      @str.send_if(:reverse) {false}.should equal(@str)
    end
  end
end