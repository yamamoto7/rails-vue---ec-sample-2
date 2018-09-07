class CreateSpecialItems < ActiveRecord::Migration[5.2]
  def change
    create_table :special_items do |t|
    	t.integer :special_id
    	t.integer :item_id

      t.timestamps
    end
  end
end
