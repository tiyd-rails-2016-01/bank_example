class AddFileToReceipt < ActiveRecord::Migration
  def change
    add_attachment :receipts, :uploaded_file 
  end
end
