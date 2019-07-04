class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :title
      t.string :keywords
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
