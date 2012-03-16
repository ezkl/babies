require 'spec_helper'

describe Babies::Request do  
  describe "#get" do
    before(:all) do
      VCR.use_cassette("google") do
        @request = Babies::Request.new("http://www.google.com", "/").get
      end
    end
    
    it "should be successful" do
      @request.success?.should be_true
    end
    
    it "should have a body" do
      @request.should respond_to(:body)
    end
  end
end