class CustomerProduct < ActiveRecord::Base
  attr_accessible :customer_id,
                  :name,
                  :sn,
                  :no,
                  :buyTime,
                  :salesAgency,
                  :sales,
                  :isSeeCustomer,
                  :guidance,
                  :outboundNumber,
                  :user,
                  :price,
                  :expiryDate,
                  :state

  belongs_to :customer
  belongs_to :product
end
