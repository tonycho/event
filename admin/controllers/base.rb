require 'rubygems'
require 'sinatra'

require 'fileutils'

Event::Admin.controllers :base do
  get :index, :map => "/" do
    render "base/index"
  end

  put '/' do
    filename = Media.upload_file params[:file]
    puts filename
  end
end
