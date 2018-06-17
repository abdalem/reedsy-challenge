class CreateFollow < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.references :user, index: true, foreign_key: true
      t.references :author, index: true, foreign_key: true
      t.timestamps
    end
  end
end
