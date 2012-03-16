require 'spec_helper'

describe Babies::Search do
  before(:all) do
    VCR.use_cassette("lamp_search") do
      @search = Babies::Search.new("lamp")
    end
  end
  
  it "should keep the original search query" do
    @search.search_query.should eq "lamp"
  end
  
  it "should keep the URI encoded query" do
    @search.encoded_query.should eq "lamp"
  end
  
  it "should have a request object" do
    @search.request.should be_kind_of(Babies::Request)
  end
  
  describe "#items" do
    let(:items) { @search.items }
    
    it "should return an array" do
      items.should be_kind_of(Array)
    end
    
    it "should return an array member for each item" do
      items.count.should eq 40
    end
  end
end