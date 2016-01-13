  json.(@library, :id, :name, :name, :date_built)
  json.url api_v1_library_url(@library)
  json.address  do
    json.street @library.address.street
    json.city @library.address.city
    json.state @library.address.state
    json.zip @library.address.zip
  end
