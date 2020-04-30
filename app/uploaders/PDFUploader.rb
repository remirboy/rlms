class PDFUploader < Shrine 
  Attacher.validate do
    validate_mime_type %w[application/pdf], message: 'File is not a PDF'
  end
end