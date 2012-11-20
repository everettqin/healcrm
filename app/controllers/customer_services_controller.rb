class CustomerServicesController < ApplicationController
  def index
    @products = CustomerService.find_all_by_customer_id(params[:id])
    @products_count = @products.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer_product = CustomerService.new
  end

  def update
    @cp = CustomerService.find(params[:pid])
    @cp.update_attributes(params[:customer_service])
    redirect_to(:controller => "customer_services", :action => "index")
  end


  def create
    @cp = CustomerService.new(params[:customer_service])
    @cp.customer_id = params[:id]
    @cp.save
    redirect_to(:controller => "customer_services", :action => "index")
  end

  def edit
    @customer_product = CustomerService.find(params[:pid])

  end

  def destroy
    ids = params[:pid].to_s().split(",")
    ids.each do |item|
      @cp = CustomerService.find(item)
      @cp.destroy
    end
    redirect_to(:controller => "customer_services", :action => "index")
  end
end
