Rails.application.routes.draw do



  # Routes for the Bookmark resource:

  # CREATE
  post("/insert_bookmark", { :controller => "bookmarks", :action => "create" })
          
  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  
  get("/bookmarks/:path_id", { :controller => "bookmarks", :action => "show" })
  
  # UPDATE
  
  post("/modify_bookmark/:path_id", { :controller => "bookmarks", :action => "update" })
  
  # DELETE
  get("/delete_bookmark/:path_id", { :controller => "bookmarks", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Product resource:

  # CREATE
  post("/insert_product", { :controller => "products", :action => "create" })
          
  # READ
  get("/products", { :controller => "products", :action => "index" })
  
  get("/products/:path_id", { :controller => "products", :action => "show" })
  
  # UPDATE
  
  post("/modify_product/:path_id", { :controller => "products", :action => "update" })
  
  # DELETE
  get("/delete_product/:path_id", { :controller => "products", :action => "destroy" })

  #------------------------------

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
