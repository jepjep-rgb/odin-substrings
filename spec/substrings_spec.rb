require 'spec_helper'
require_relative '../substrings'

RSpec.describe 'Sub Strings' do

  describe 'implement substrings method' do
    
    it 'returns hash listing substring and match count' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      string = "low"
      result = { "low" => 1 }
      expect(substrings(string, dictionary)).to eq(result)
    end

    it 'returns hash listing substring and match count' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      string = "below"
      result = { "below" => 1, "low" => 1}
      expect(substrings(string, dictionary)).to eq(result)
    end

    it 'returns hash listing substring and match count' do
      dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
      string = "Howdy partner, sit down! How's it going?"
      result = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
      expect(substrings(string, dictionary)).to eq(result)
    end
  end
end
