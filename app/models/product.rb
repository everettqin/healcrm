class Product < ActiveRecord::Base
  attr_accessible :name

  has_many :customer_products
  has_many :customers, :through => :customer_products

  accepts_nested_attributes_for :customers
end
