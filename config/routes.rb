Rails.application.routes.draw do



  # Routes for the Farm resource:

  # CREATE
  post("/insert_farm", { :controller => "farms", :action => "create" })
          
  # READ
  get("/farms", { :controller => "farms", :action => "index" })
  
  get("/farms/:path_id", { :controller => "farms", :action => "show" })
  
  # UPDATE
  
  post("/modify_farm/:path_id", { :controller => "farms", :action => "update" })
  
  # DELETE
  get("/delete_farm/:path_id", { :controller => "farms", :action => "destroy" })

  #------------------------------

end
