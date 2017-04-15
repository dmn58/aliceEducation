class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :page_id
      t.string :name
      t.integer :position
      t.boolean :visible
      t.text :content
      t.string :content_type

      t.timestamps
    end
  end
end
