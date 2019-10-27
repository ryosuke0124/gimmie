class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    #add_index :relationships, :follwer_id
    #add_index :relationships, :follwed_id
  end
end
