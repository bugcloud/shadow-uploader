class Item < ActiveRecord::Base
  mount_uploader :video, VideoUploader
end
