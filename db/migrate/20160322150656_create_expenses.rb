class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :payee
      t.decimal :amount
      t.datetime :paid_at
      t.integer :account_id

      t.timestamps null: false
    end
    add_index :expenses, :account_id
  end
end
