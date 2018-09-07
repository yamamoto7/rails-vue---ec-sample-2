class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
    	t.string :title
    	t.integer :status

      t.timestamps
    end
  end
end
