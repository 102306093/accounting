json.array!(@expenses) do |expense|
  json.extract! expense, :id, :money, :kind
  json.url expense_url(expense, format: :json)
end
