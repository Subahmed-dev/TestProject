json.event @event, partial: 'event', as: :event
json.conferences @event.conferences, partial: 'conference', as: :conference
json.speakers @event.speakers, partial: 'speaker', as: :speaker
