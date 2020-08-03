class AddConfirmationPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :confirmation_password, :string
  end
end
