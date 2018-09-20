class AddIndexToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_reference :accounts, :owner, index: true
  end
end
