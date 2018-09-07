class CreateRentedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :rented_items do |t|
    	t.integer :order_id
    	t.integer :item_id

      t.timestamps
    end
  end
end
