class AddUserIdToPosts < ActiveRecord::Migration
  def change
    add_index :users, :user_name, unique: true
    add_reference :posts, :user, index: true, foreign_key: true
  end
end
