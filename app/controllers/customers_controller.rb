class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    @customers_count = @customers.count
    #render :text =>jsonStr
    respond_to do |format|
      format.html
      format.js
    end
  end

  def add
    @customer = Customer.new
    @customer.gender = 0
  end

  def edit
    @customer = Customer.find(params[:id])
  end


  def create
    @customer = Customer.new(params[:customer])
    @customer.save
    redirect_to(:controller => "customers", :action => "index")
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(params[:customer])
    redirect_to(:controller => "customers", :action => "index")
  end

  def destroy
    ids = params[:id].to_s().split(",")
    ids.each do |item|
      @customer = Customer.find(item)
      @customer.destroy
    end
    redirect_to(:controller => "customers", :action => "index")
  end

  def edit_disease
    @customer = Customer.find(params[:id])
  end

  def update_disease
    @customer = Customer.find(params[:id])

    @customer.disease_attributes = params[:customer_disease]

    @customr.save!
  end

end
