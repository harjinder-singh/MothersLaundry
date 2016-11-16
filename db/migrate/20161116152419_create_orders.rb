class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.float :bill_amount
      t.integer :weight
      t.date :collecting_date
      t.date :delivery_date
      t.time :collecting_time
      t.time :delivery_time
      t.boolean :premium
      t.references :user, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
