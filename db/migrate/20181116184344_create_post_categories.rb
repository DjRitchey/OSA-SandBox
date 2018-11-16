class CreatePostCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :post_categories do |t|
        t.belongs_to :post
        t.belongs_to :category
      t.timestamps
    end
  end
end
