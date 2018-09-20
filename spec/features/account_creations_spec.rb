require 'rails_helper'

RSpec.feature "AccountCreations", type: :feature do
  describe "account creation" do
      it "allows user to create an account" do
          visit root_path
          click_link "Create Account"
          
          fill_in "account[owner_attributes][name]",with: "Ryan"
          fill_in "account[owner_attributes][email]",with: "bolandry@gmail.com"
          fill_in "account[owner_attributes][password]",with: "password"
          fill_in "account[owner_attributes][password_confirmation]",with: "password"
          fill_in "account[subdomain]",with: "test_subdomain"
          click_button "Submit"
          
          expect(page).to have_content(/Signed up successfully/)
      end
  end
end
