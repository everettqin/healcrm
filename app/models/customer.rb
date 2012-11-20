class Customer < ActiveRecord::Base
  attr_accessible :name, :gender, :telephone, :zip, :birthday, :age, :email, :address, :provincen, :city, :country, :level, :is_recommend, :recommend_customer_name, :model, :sn, :buy_date, :category, :source,
                  :province, :city, :country, :disease_id
  has_many :customer_products
  has_many :products, :through => :customer_products

  belongs_to :disease, :class_name => "CustomerDisease", :dependent => :destroy

  accepts_nested_attributes_for :products

  accepts_nested_attributes_for :disease
end
