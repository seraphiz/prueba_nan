json.extract! tarea, :id, :title, :image, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
