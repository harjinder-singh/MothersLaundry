class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :full_address
      t.boolean :default_add
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
