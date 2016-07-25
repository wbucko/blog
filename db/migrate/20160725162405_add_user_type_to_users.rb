class AddUserTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :string, default: 'reader'
  end
end
