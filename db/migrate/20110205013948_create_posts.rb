class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :description
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
