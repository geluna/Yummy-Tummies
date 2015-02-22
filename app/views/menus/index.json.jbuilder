json.array!(@menus) do |menu|
  json.extract! menu, :id, :menuID, :foodItem, :description, :image_url, :school, :franOwner, :price
  json.url menu_url(menu, format: :json)
end
