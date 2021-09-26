json.extract! project, :id, :name, :description, :state, :initial_date, :finish_date, :created_at, :updated_at
json.url project_url(project, format: :json)
