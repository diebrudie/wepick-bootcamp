class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|
      t.references :asker, null: false, foreign_key: { to_table: :users }
      t.references :reciever, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
