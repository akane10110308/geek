class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :body
      t.text :memo
      t.float :watch
      t.integer :user_id
      t.date :calendar
      t.timestamps
    end
  end
end
