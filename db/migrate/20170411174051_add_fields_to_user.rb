class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :provider, :stringuid
    add_column :users, :images, :string
  end
end
