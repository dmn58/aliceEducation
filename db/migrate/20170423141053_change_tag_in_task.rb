class ChangeTagInTask < ActiveRecord::Migration[5.0]
  def change
  	change_column :tasks, :tag, :integer
  end
end
