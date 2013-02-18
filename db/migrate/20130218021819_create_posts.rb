class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      # t.belongs_to :user

      t.timestamps # created_at, updated_at
    end
  end
end
