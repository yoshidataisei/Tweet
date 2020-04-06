class AddUsernameToPuts < ActiveRecord::Migration[5.2]
  def change
    add_column :puts, :username, :string
  end
end
