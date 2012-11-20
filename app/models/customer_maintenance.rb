class CustomerMaintenance < ActiveRecord::Base
  attr_accessible :customer_id,
  :customer_id ,
  :action_time,  #保养时间
  :serverPeople, #服务人员
  :category, #保养类型
  :source,   #数据源文件
  :model #机型
end
