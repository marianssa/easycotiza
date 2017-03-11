json.extract! cotizacion, :id, :codigo, :descripcion, :estado, :created_at, :updated_at
json.url cotizacion_url(cotizacion, format: :json)