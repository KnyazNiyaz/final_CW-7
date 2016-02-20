json.array!(@answers) do |answer|
  json.extract! answer, :id, :description, :status
  json.url answer_url(answer, format: :json)
end
