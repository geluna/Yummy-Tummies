json.array!(@accts) do |acct|
  json.extract! acct, :id, :credit, :debit, :balance, :user_id
  json.url acct_url(acct, format: :json)
end
