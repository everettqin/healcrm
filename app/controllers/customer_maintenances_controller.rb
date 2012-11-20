class CustomerMaintenancesController < ApplicationController
  def index
    @products = CustomerMaintenance.find_all_by_customer_id(params[:id])
    @products_count = @products.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer_product = CustomerMaintenance.new
  end

  def update
    @cp = CustomerMaintenance.find(params[:pid])
    @cp.update_attributes(params[:customer_maintenance])
    redirect_to(:controller => "customer_maintenances", :action => "index")
  end


  def create
    @cp = CustomerMaintenance.new(params[:customer_maintenance])
    @cp.customer_id = params[:id]
    @cp.save
    redirect_to(:controller => "customer_maintenances", :action => "index")
  end

  def edit
    @customer_product = CustomerMaintenance.find(params[:pid])

  end

  def destroy
    ids = params[:pid].to_s().split(",")
    ids.each do |item|
      @cp = CustomerMaintenance.find(item)
      @cp.destroy
    end
    redirect_to(:controller => "customer_maintenances", :action => "index")
  end
end
