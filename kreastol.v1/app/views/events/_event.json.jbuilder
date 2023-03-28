json.extract! event, :id, :start_at, :event_template_id, :project_id, :created_at, :updated_at
json.url event_url(event, format: :json)
