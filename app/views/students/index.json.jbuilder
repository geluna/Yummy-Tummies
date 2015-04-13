json.array!(@students) do |student|
  json.extract! student, :id, :id, :fname, :lname, :school
  json.url student_url(student, format: :json)
end
