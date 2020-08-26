Rails.application.routes.draw do



  # Routes for the Product category resource:

  # CREATE
  post("/insert_product_category", { :controller => "product_categories", :action => "create" })
          
  # READ
  get("/product_categories", { :controller => "product_categories", :action => "index" })
  
  get("/product_categories/:path_id", { :controller => "product_categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_product_category/:path_id", { :controller => "product_categories", :action => "update" })
  
  # DELETE
  get("/delete_product_category/:path_id", { :controller => "product_categories", :action => "destroy" })

  #------------------------------

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
