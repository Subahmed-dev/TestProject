json.api_data @api_data, partial: 'api_data', as: :data

# pagination metadata
json.pagination do
  json.current_page @api_data.current_page
  json.total_pages @api_data.total_pages
  json.total_count @api_data.total_count
  json.per_page @api_data.limit_value
end