# render "pum"

json.extract! pum, :id, :state_puma, :borough, :agegroups
json.url pum_url(pum, format: :json)

json.url.agegroups