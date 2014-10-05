require "spec_helper"

describe Atm do

	before :all do
		@atm = Atm.new
		@demons = [50, 20, 5] # denoms available
	    @zero_amount = [0, false]
	    @invalid_amount = [77, false]
	    @amount1 = [65, [50, 5, 5, 5]]
	    @amount2 = [220, [50, 50, 50, 50, 20]]
	    @invalid_amount = [189, false]
	end

	describe "#new" do
		it "returns a new Atm object" do
			expect(@atm).to be_an_instance_of(Atm)
		end
	end

	describe '#amount' do
		it "returns false for zero or negative amounts requested" do
			expect(@atm.withdraw(@zero_amount.first, @demons)).to eql(@zero_amount.last)
		end
	end

	describe "#denoms" do
		it "returns a correct array of demons for amount1" do
			expect(@atm.withdraw(@amount1.first, @demons)).to eql(@amount1.last)
		end

		it "returns a correct array of demons for amount2" do
			expect(@atm.withdraw(@amount2.first, @demons)).to eql(@amount2.last)
		end	
	end

	describe '#fail' do
		it "returns false if the amount cannot be processed" do
			expect(@atm.withdraw(@invalid_amount.first, @demons)).to eql(@invalid_amount.last)
		end
	end

end