json.array!(@iqra_rastees) do |iqra_rastee|
  json.extract! iqra_rastee, :id
  json.url iqra_rastee_url(iqra_rastee, format: :json)
end
