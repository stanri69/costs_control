class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :category
      t.integer :price
      t.datetime :dob
      t.integer :user_id

      t.timestamps
    end
  end
end
