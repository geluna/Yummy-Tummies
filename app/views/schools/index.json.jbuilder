json.array!(@schools) do |school|
  json.extract! school, :id, :student_id, :user_id
  json.url school_url(school, format: :json)
end
