json.conference @conference, partial: 'conference', as: :conference
json.attendees @attendees, partial: 'attendee', as: :attendee

# pagination metadata
json.pagination do
  json.current_page @attendees.current_page
  json.total_pages @attendees.total_pages
  json.total_count @attendees.total_count
  json.per_page @attendees.limit_value
end