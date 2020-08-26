class FarmsController < ApplicationController
  has_many(:products, { :class_name => "Product", :foreign_key => "farm_id", :dependent => :destroy })
  
  def index
    matching_farms = Farm.all

    @list_of_farms = matching_farms.order({ :created_at => :desc })

    render({ :template => "farms/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_farms = Farm.where({ :id => the_id })

    @the_farm = matching_farms.at(0)

    render({ :template => "farms/show.html.erb" })
  end

  def create
    the_farm = Farm.new
    the_farm.name = params.fetch("query_name")

    if the_farm.valid?
      the_farm.save
      redirect_to("/farms", { :notice => "Farm created successfully." })
    else
      redirect_to("/farms", { :notice => "Farm failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_farm = Farm.where({ :id => the_id }).at(0)

    the_farm.name = params.fetch("query_name")

    if the_farm.valid?
      the_farm.save
      redirect_to("/farms/#{the_farm.id}", { :notice => "Farm updated successfully."} )
    else
      redirect_to("/farms/#{the_farm.id}", { :alert => "Farm failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_farm = Farm.where({ :id => the_id }).at(0)

    the_farm.destroy

    redirect_to("/farms", { :notice => "Farm deleted successfully."} )
  end
end
