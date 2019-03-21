class FormController < ApplicationController
  def index
    @facilities=Facility.all
  end

  def create
      fluff = (params[:type] =~ /item/) ? Item.new : Procedure.new
      fluff.name = params[:name]
      fluff.date = params[:date]
      fluff.description = params[:description]
      fluff.price = params[:price]
      fluff.facility_id = params[:facility_id]
      fluff.status = "pending"
      fluff.save
      redirect_to "/"
  end

end
