class CustomerDisease < ActiveRecord::Base
  attr_accessible :customer_id,
                  :hospitalName,
                  :department,
                  :doctorName,
                  :diagnosis_time,
                  :scheme,
                  :name,
                  :height,
                  :weight,
                  :bmi,
                  :activity_ability

  has_one :customer
end
