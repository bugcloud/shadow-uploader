class VideoUploader < CarrierWave::Uploader::Base

  include CarrierWave::Video

  storage :file
  process encode_video: [:mp4, resolution: '320x240']

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  def filename
    "#{secure_token}.mp4" if original_filename.present?
  end

  private
    def secure_token
      var = :"@#{mounted_as}_secure_token"
      model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
    end
end
