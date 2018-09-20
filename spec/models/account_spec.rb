require 'rails_helper'

RSpec.describe Account, type: :model do
  describe "validation" do
     it "should presence" do
        @account = FactoryGirl.create(:account)
        @account.subdomain = nil
        expect(@account).not_to be_valid
     end
     
     xit "should not be duplicated" do
        @user = User.create(name:"Willy")
        @account1 =  @user.build_account(subdomain:"hello")
     end
    #  it { should allow_value('bolandry').for(:subdomain)}
    #  it { should allow_value('test').for(:subdomain)}
     
    #  it { should_not allow_value('www').for(:subdomain)}
    #  it { should_not allow_value('WWW').for(:subdomain)}
    #  it { should_not allow_value('.test').for(:subdomain)}
    #  it { should_not allow_value('test/').for(:subdomain)}
  end
end
