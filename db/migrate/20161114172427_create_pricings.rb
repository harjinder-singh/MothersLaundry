class CreatePricings < ActiveRecord::Migration
  def change
    create_table :pricings do |t|
      t.integer :price
      t.references :pricable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
