class CustomerSuggest < ActiveRecord::Base
  attr_accessible :customer_id,
  :suggestDate, #日期
  :content, #内容
  :receptioner #处理人
end
