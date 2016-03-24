json.array!(@receipts) do |receipt|
  json.extract! receipt, :id, :expense_id
  json.url receipt_url(receipt, format: :json)
end
