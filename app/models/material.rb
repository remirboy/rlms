class Material < ActiveRecord::Base
  include ImageUploader::Attachment(:image)
  include PDFUploader::Attachment(:pdf)
  include VideoUploader::Attachment(:video)
  belongs_to :topic
end
