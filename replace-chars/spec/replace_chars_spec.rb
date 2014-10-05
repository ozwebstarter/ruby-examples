require "spec_helper"

describe ReplaceChars do

	before :all do
		@object = ReplaceChars.new
	end

	describe "#new" do
		it "returns a new ReplaceChars object" do
			expect(@object).to be_an_instance_of(ReplaceChars)
		end
	end

	describe "#input" do
		@inputs = [
			['The quick brown fox', 'o,$', 'The quick br$wn f$x'], 
			['quick', 'q,k' 'k,4', 'kuic4'], 
			['success', 'c,s' 's,5' '5,y' 's,9', '5usse55']
		].each do |string, pairs, expected|
			it "Replace characters in a given String" do
				expect(@object.replace_chars(string, pairs)).to eql(expected)
			end
		end
	end

end