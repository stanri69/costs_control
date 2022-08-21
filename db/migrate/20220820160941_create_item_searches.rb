class CreateItemSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :item_searches do |t|

      t.timestamps
    end
  end
end
