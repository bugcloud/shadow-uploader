json.set! :item do
  json.video "#{Rails.application.secrets.api_base_url}#{@item.video_url}"
end
