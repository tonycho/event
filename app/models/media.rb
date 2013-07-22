require 'sinatra/base'
require 'fileutils'

class Media < ActiveRecord::Base
  belongs_to :conference

  def self.upload_file params_file
    if params_file
      filename = params_file[:filename]
      file = params_file[:tempfile]
      directory = "public/files"

      File.open(File.join(directory, filename), 'wb') do |f|
        f.write file.read
      end
      return filename

    else
      return nil
    end
  end

  def self.media_types
    {
      'Image' => '1',
      'Video' => '2',
      'Others' => '3'
    }
  end

  def media_type_desc
    case media_type_id
      when 1
        "Image"
      when 2
        "Video"
      when 3
        "Others"
      else
        ""
    end
  end

  def get_file_path
    "/files/" + location
  end
end
