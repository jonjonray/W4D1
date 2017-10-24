class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :artist_id, null: false
      t.integer :user_id, null:false
      t.text :body
      t.timestamps
    end

    add_index :comments, :artist_id
    add_index :comments, :user_id
  end
end
