class CustomerProductsController < ApplicationController
  def index
    @products = CustomerProduct.find_all_by_customer_id(params[:id])
    @products_count = @products.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer_product = CustomerProduct.new
  end

  def update
    @cp = CustomerProduct.find(params[:pid])
    @cp.update_attributes(params[:customer_product])
    redirect_to(:controller => "customer_products", :action => "index")
  end


  def create
    @cp = CustomerProduct.new(params[:customer_product])
    @cp.customer_id = params[:id]
    @cp.save
    redirect_to(:controller => "customer_products", :action => "index")
  end

  def edit
    @customer_product = CustomerProduct.find(params[:pid])

  end

  def destroy
    ids = params[:pid].to_s().split(",")
    ids.each do |item|
      @cp = CustomerProduct.find(item)
      @cp.destroy
    end
    redirect_to(:controller => "customer_products", :action => "index")
  end
end
