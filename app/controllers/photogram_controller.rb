class PhotogramController < ApplicationController
  def main_form
    @photos = Photo.where("1=1")
    #@photos = Photo.find(:all)
    @img_ids = []
    @img_captions = []
    @img_urls = []
    @img_photos = []
    Photo.all.each do |photo|
      @img_ids.push(photo.id)
      @img_captions.push(photo.caption)
      @img_urls.push(photo.source)
      @img_photos.push(photo)
    end
    render("layouts/index.html.erb")
  end
  
  def new_photo
    render("layouts/new_photo.html.erb")
  end
  
  def show
    the_id = params[:the_id]
    p = Photo.find(the_id)
    @img_cap = p.caption
    @img_url = p.source
    @img_mde = "?Unknown"
    render("layouts/photo.html.erb")
  end
  
  def edit_form
      the_id = params[:an_id]
      @img_id = the_id
      p = Photo.find(the_id)
      @img_cap = p.caption
      @img_url = p.source
      @img_mde = "?Unknown"
      render("layouts/edit.html.erb")
  end
  
  def edit_photo
      @num_photos = Photo.count
      @img_id = params[:the_id].to_i
      @img_url = params[:the_source]
      @img_cap = params[:the_caption]
      p = Photo.find(@img_id)
      p.caption = @img_cap
      p.source = @img_url
      p.save
      redirect_to("/photos/" + @img_id.to_s)
  end
  
  def create_photo
    @num_photos = Photo.count
    @img_url = params[:the_source]
    @img_cap = params[:the_caption]
    p = Photo.new
    p.source = @img_url
    p.caption= @img_cap
    p.save
    redirect_to("/photos")
    #render("layouts/create_photo.html.erb")
  end
  
  def destroy_row
    the_id = params[:toast_id].to_i
    p = Photo.find(the_id)
    p.destroy
    @num_photos = Photo.count
    redirect_to("/photos")
    #render("layouts/delete_photo.html.erb")
  end
end
