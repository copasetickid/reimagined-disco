class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, id: false do |t|
      t.integer :cat_id, null: false
      t.string :cat_title
      t.integer :cat_pages
      t.integer :cat_subcats
      t.integer :cat_files

      t.timestamps null: false
    end
    execute "ALTER TABLE categories ADD PRIMARY KEY (cat_id)"
  end
end
