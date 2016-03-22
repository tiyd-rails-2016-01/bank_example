class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :owner
      t.decimal :balance
      t.integer :account_number
      t.integer :branch_id

      t.timestamps null: false
    end
    add_index :accounts, :branch_id
  end
end
