json.(@address, :id, :street, :city, :state, :zip)
json.url api_v1_library_address_url(@address.library, @address)
