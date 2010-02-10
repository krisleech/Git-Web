module BlobsHelper

  def blob_filetype(blob)
    extname = File.extname(blob.name)[1..-1]
    mime_type = Mime::Type.lookup_by_extension(extname)
    mime_type.to_s unless mime_type.nil?
  end
end
