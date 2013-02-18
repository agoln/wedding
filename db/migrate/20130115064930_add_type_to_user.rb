class AddTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :position, :integer
  end
end
