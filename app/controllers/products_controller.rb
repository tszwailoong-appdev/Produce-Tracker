class ProductsController < ApplicationController
 belongs_to(:farm, { :required => false, :class_name => "Farm", :foreign_key => "farm_id" })
 belongs_to(:product_category, { :required => false, :class_name => "ProductCategory", :foreign_key => "product_category_id" })
 has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "product_id", :dependent => :destroy })
 has_many(:comments, { :class_name => "Comment", :foreign_key => "product_id", :dependent => :destroy })
 has_many(:users, { :through => :bookmarks, :source => :user })


  def index
    matching_products = Product.all

    @list_of_products = matching_products.order({ :created_at => :desc })

    render({ :template => "products/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_products = Product.where({ :id => the_id })

    @the_product = matching_products.at(0)

    render({ :template => "products/show.html.erb" })
  end

  def create
    the_product = Product.new
    the_product.farm_id = params.fetch("query_farm_id")
    the_product.product_category_id = params.fetch("query_product_category_id")
    the_product.units_in_stock = params.fetch("query_units_in_stock")
    the_product.photo = params.fetch("query_photo")

    if the_product.valid?
      the_product.save
      redirect_to("/products", { :notice => "Product created successfully." })
    else
      redirect_to("/products", { :notice => "Product failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_product = Product.where({ :id => the_id }).at(0)

    the_product.farm_id = params.fetch("query_farm_id")
    the_product.product_category_id = params.fetch("query_product_category_id")
    the_product.units_in_stock = params.fetch("query_units_in_stock")
    the_product.photo = params.fetch("query_photo")

    if the_product.valid?
      the_product.save
      redirect_to("/products/#{the_product.id}", { :notice => "Product updated successfully."} )
    else
      redirect_to("/products/#{the_product.id}", { :alert => "Product failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_product = Product.where({ :id => the_id }).at(0)

    the_product.destroy

    redirect_to("/products", { :notice => "Product deleted successfully."} )
  end
end
