Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get("/", { :controller => "photogram", :action => "main_form" })
  get("/photos/new", { :controller => "photogram", :action => "new_photo" })
  get("/create_photo", { :controller => "photogram", :action => "create_photo" })
  get("/photos/:the_id", { :controller => "pictures", :action => "show" })
  get("/photos/:an_id/edit", { :controller => "pictures", :action => "edit_form" })
  get("/update_photo/:some_id", { :controller => "pictures", :action => "update_row" })
  get("/delete_photo/:toast_id", { :controller => "pictures", :action => "destroy_row" })
end
