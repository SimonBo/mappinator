class CreatePois < ActiveRecord::Migration
  def change
    create_table :pois do |t|
      t.string :name
      t.string :address
      t.string :description
      t.float :latitude
      t.float :longitude
      t.integer :category_id
      t.timestamps
    end
  end
end
