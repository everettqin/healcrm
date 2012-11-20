class CustomerComplaintsController < ApplicationController
  def index
    @products = CustomerComplaints.find_all_by_customer_id(params[:id])
    @products_count = @products.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer_product = CustomerComplaints.new
  end

  def update
    @cp = CustomerComplaints.find(params[:pid])
    @cp.update_attributes(params[:customer_complaints])
    redirect_to(:controller => "customer_complaints", :action => "index")
  end


  def create
    @cp = CustomerComplaints.new(params[:customer_complaints])
    @cp.customer_id = params[:id]
    @cp.save
    redirect_to(:controller => "customer_complaints", :action => "index")
  end

  def edit
    @customer_product = CustomerComplaints.find(params[:pid])

  end

  def destroy
    ids = params[:pid].to_s().split(",")
    ids.each do |item|
      @cp = CustomerComplaints.find(item)
      @cp.destroy
    end
    redirect_to(:controller => "customer_complaints", :action => "index")
  end
end
