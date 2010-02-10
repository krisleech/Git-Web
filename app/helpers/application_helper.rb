# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def make_readable(repository_name)
    repository_name.gsub('_', ' ').capitalize
  end

  def blob_icon(blob)
    filename = 'file'
    files = %w(c doc rb swf php xls html htm)
    image_files = %w(png gif jpg jpeg)
    ext = File.extname(blob.name).gsub( /^\./, '' ).downcase

    filename = ext if files.include? ext
    filename = 'image' if image_files.include? ext
    filename = 'information' if blob.name.downcase == 'readme'

    "<img src='/images/file_icons/#{filename}.png' alt='#{blob.mime_type}' />"    
  end
end
