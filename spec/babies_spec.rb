require 'spec_helper'

describe Babies do
  describe "#search" do
    before(:all) do
      VCR.use_cassette("dog food search") do
        @search = Babies.search("dog food")
      end
    end
        
    it "should return a Search object" do
      @search.should be_kind_of(Babies::Search)
    end
  end
end
