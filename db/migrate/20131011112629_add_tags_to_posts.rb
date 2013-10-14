class AddTagsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :tag_id, :integer
    add_index :posts, :tag_id
  end
end
