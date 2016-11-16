class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.string :weight
      t.timestamps null: false
    end
  end
end
