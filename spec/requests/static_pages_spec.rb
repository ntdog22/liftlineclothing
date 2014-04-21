require 'spec_helper'

describe "Static pages" do

    subject { page }

    describe "Home page" do
    end

    describe "Clothing page" do
    end

    describe "About page" do
    end
    

    it "should have the correct navbar" do
				
		visit root_path 
	
		click_link "About"
		expect(page).to have_selector('h3', "ABOUT") 
		click_link "Clothing"
		expect(page).to have_selector('h3', "CLOTHING") 
		click_link "Contact"
		expect(page).to have_selector('h3', "Contact") 
		click_link "Home"
		expect(page).to have_selector('h3', "HOME") 
		expect(page).to have_link('SHOP')
		expect(page).to have_link('LIFE')
		expect(page).to have_link('Sign In')

	end
end