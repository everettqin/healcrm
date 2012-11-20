class CustomerComplaints < ActiveRecord::Base
  attr_accessible :customer_id,
  :complaintsDate, #投诉时间
  :subject, #投诉主题
  :receptioner, #处理人
  :processMethod, #处理方法
  :processCompleteDate, #完成时间
  :processer #完成人
end
