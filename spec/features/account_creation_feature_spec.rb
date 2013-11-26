#Describe what a user goes through when creating an account
#
require 'spec_helper'

describe 'account creation' do
	it 'allows user to create account' do
		visit root_path
		click_link 'Create Account'

		fill_in 'First Name', with: 'Jeremiah'
		fill_in 'Last Name', with: 'Jenkins'
		fill_in 'Email', with: 'jjenkins70@gmail.com'
		fill_in 'Password', with: 'password'
		fill_in 'Password Confirmation', with: 'password'
		click_button 'Create Account'

		expect(page).to have_content('Signed up successfully')
	end
end
