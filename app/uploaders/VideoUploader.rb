class VideoUploader < Shrine 
  Attacher.validate do
    validate_mime_type %w[video/mp4], message: 'File is not a video' 
  end
end