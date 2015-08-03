class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :bookmark_id

      t.timestamps
    end
  end
end
