json.libraries @libraries do |library|
  json.(library, :id, :name, :name, :date_built)
  json.url api_v1_library_url(library)
  json.address do
    json.id library.address.id
    json.street library.address.street
    json.city library.address.city
    json.state library.address.state
    json.zip library.address.zip
  end
end
