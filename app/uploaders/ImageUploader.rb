require 'image_processing/mini_magick'
class ImageUploader < Shrine
  Attacher.validate do
    validate_mime_type %w[image/png image/jpeg image/jpg], message: 'File is not a picture'
    validate_max_size 5 * 1024 * 1024, message: 'is too large (max is 5 MB)'
  end

  Attacher.derivatives do |original|
    magick = ImageProcessing::MiniMagick.source(original)
    { 
      large:  magick.resize_to_limit!(800, 800),
      medium: magick.resize_to_limit!(500, 500),
      small:  magick.resize_to_limit!(300, 300)
    }
  end
end