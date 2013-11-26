require 'spec_helper'

describe Account do
	describe 'validations' do
		it { should validate_presence of :Email}
		it { should validate_uniqueness_of :Email}

	end

	describe 'associations' do
		it 'should have owner'
	end
	

end
