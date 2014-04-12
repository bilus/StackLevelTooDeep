json.array!(@mid_templates) do |mid_template|
  json.extract! mid_template, :id
  json.url mid_template_url(mid_template, format: :json)
end
