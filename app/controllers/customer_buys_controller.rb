class CustomerBuysController < ApplicationController
  def index
    @products = CustomerBuyRecord.find_all_by_customer_id(params[:id])
    @products_count = @products.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer_product = CustomerBuyRecord.new
  end

  def update
    @cp = CustomerBuyRecord.find(params[:pid])
    @cp.update_attributes(params[:customer_buy_record])
    redirect_to(:controller => "customer_buys", :action => "index")
  end


  def create
    @cp = CustomerBuyRecord.new(params[:customer_buy_record])
    @cp.customer_id = params[:id]
    @cp.save
    redirect_to(:controller => "customer_buys", :action => "index")
  end

  def edit
    @customer_product = CustomerBuyRecord.find(params[:pid])

  end

  def destroy
    ids = params[:pid].to_s().split(",")
    ids.each do |item|
      @cp = CustomerBuyRecord.find(item)
      @cp.destroy
    end
    redirect_to(:controller => "customer_buys", :action => "index")
  end
end
