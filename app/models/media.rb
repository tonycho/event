require 'sinatra/base'
require 'fileutils'

class Media < ActiveRecord::Base
  belongs_to :conference
  MEDIA_TYPES =
    {
      'Image' => 1,
      'Video' => 2,
      'Others' => 3
    }
  FILE_DIRECTORY = "files"

  def self.upload_file params_file
    if params_file
      filename = params_file[:filename]
      file = params_file[:tempfile]
      directory = "public/#{FILE_DIRECTORY}"

      File.open(File.join(directory, filename), 'wb') do |f|
        f.write file.read
      end
      return filename

    else
      return nil
    end
  end

  def media_type_desc
    MEDIA_TYPES.index(media_type_id)
  end

  def get_file_path
    "/#{FILE_DIRECTORY}/" + location
  end
end
