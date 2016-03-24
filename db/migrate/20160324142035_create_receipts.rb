class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :expense_id

      t.timestamps null: false
    end
    add_index :receipts, :expense_id
  end
end
