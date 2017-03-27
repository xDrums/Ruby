json.extract! articulo, :id, :titulo, :cuerpo, :link_mercado, :count_vts, :image, :created_at, :updated_at
json.url articulo_url(articulo, format: :json)
