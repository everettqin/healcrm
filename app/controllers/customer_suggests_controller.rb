class CustomerSuggestsController < ApplicationController
  def index
    @products = CustomerSuggest.find_all_by_customer_id(params[:id])
    @products_count = @products.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer_product = CustomerSuggest.new
  end

  def update
    @cp = CustomerSuggest.find(params[:pid])
    @cp.update_attributes(params[:customer_suggest])
    redirect_to(:controller => "customer_suggests", :action => "index")
  end


  def create
    @cp = CustomerSuggest.new(params[:customer_suggest])
    @cp.customer_id = params[:id]
    @cp.save
    redirect_to(:controller => "customer_suggests", :action => "index")
  end

  def edit
    @customer_product = CustomerSuggest.find(params[:pid])

  end

  def destroy
    ids = params[:pid].to_s().split(",")
    ids.each do |item|
      @cp = CustomerSuggest.find(item)
      @cp.destroy
    end
    redirect_to(:controller => "customer_suggests", :action => "index")
  end
end
