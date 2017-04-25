class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.boolean :visible
      t.integer :subject_id
      t.integer :permalink
      t.integer :position

      t.timestamps
    end
  end
end
