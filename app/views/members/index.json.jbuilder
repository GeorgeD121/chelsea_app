json.array!(@members) do |member|
  json.extract! member, :id, :first_name, :last_name, :address_1, :address_2, :city, :country, :postcode, :email
  json.url member_url(member, format: :json)
end
