class CreateUpvote < ActiveRecord::Migration[5.2]
  def change
    create_table :upvotes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true
      t.timestamps
    end
  end
end
