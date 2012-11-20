class CustomerDiseasesController < ApplicationController
  def index
    @products = CustomerDisease.find_all_by_customer_id(params[:id])
    @products_count = @products.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer_product = CustomerDisease.new
  end

  def update
    @cp = CustomerDisease.find(params[:pid])
    @cp.update_attributes(params[:customer_disease])
    redirect_to(:controller => "customer_diseases", :action => "index")
  end


  def create
    @cp = CustomerDisease.new(params[:customer_disease])
    @cp.customer_id = params[:id]
    @cp.save
    redirect_to(:controller => "customer_diseases", :action => "index")
  end

  def edit
    @customer_product = CustomerDisease.find(params[:pid])

  end

  def destroy
    ids = params[:pid].to_s().split(",")
    ids.each do |item|
      @cp = CustomerDisease.find(item)
      @cp.destroy
    end
    redirect_to(:controller => "customer_diseases", :action => "index")
  end
end
