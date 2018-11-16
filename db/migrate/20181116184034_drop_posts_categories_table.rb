class DropPostsCategoriesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :posts_categories 
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
