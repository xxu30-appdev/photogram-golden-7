class PhotogramController < ApplicationController
  def main_form
    render("layouts/index.html.erb")
  end
  def new_photo
    render("layouts/new_photo.html.erb")
  end
  def create_photo
    @num_photos = 0
    @img_url = params[:the_source]
    @img_cap = params[:the_caption]
    render("layouts/create_photo.html.erb")
  end
end
