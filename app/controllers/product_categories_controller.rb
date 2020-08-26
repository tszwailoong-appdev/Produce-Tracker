class ProductCategoriesController < ApplicationController
  has_many(:products, { :class_name => "Product", :foreign_key => "product_category_id", :dependent => :destroy })
  
  def index
    matching_product_categories = ProductCategory.all

    @list_of_product_categories = matching_product_categories.order({ :created_at => :desc })

    render({ :template => "product_categories/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_product_categories = ProductCategory.where({ :id => the_id })

    @the_product_category = matching_product_categories.at(0)

    render({ :template => "product_categories/show.html.erb" })
  end

  def create
    the_product_category = ProductCategory.new
    the_product_category.name = params.fetch("query_name")

    if the_product_category.valid?
      the_product_category.save
      redirect_to("/product_categories", { :notice => "Product category created successfully." })
    else
      redirect_to("/product_categories", { :notice => "Product category failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_product_category = ProductCategory.where({ :id => the_id }).at(0)

    the_product_category.name = params.fetch("query_name")

    if the_product_category.valid?
      the_product_category.save
      redirect_to("/product_categories/#{the_product_category.id}", { :notice => "Product category updated successfully."} )
    else
      redirect_to("/product_categories/#{the_product_category.id}", { :alert => "Product category failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_product_category = ProductCategory.where({ :id => the_id }).at(0)

    the_product_category.destroy

    redirect_to("/product_categories", { :notice => "Product category deleted successfully."} )
  end
end
