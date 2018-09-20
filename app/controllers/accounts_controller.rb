class AccountsController < ApplicationController
  
  skip_before_action :authenticate_user!,only:[:new]
  
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    byebug
    if @account.save
      flash[:success] = "Signed up successfully."
      redirect_to root_path
    else
      render "new"
    end
  end
  
  private 
  def account_params
    params.require(:account).permit(:subdomain,owner_attributes:[:name,:email,:password,:password_confirmation ])
  end
end
