class CustomerService < ActiveRecord::Base
	attr_accessible :customer_id,
	    :service_reception_personnel, #服务接待人员
		:model, #机型
	    :sn, #序列号
	    :isInExpireDate, #是否在质保期
	    :repairDate, #维修时间
	    :repairAddress, #维修地点
	    :repairMan, #维修人
	    :isReturnFactory, #是否返厂
	    :faultKind, #故障类别(电机故障、电路板故障、压力传感器故障、流量传感器故障、其他)
	    :faultReason, #故障原因(机器故障、机器进水、机器摔损)
	    :faultMark, #故障说明
	    :repairCompleteDate, #维修完成时间
	    :repairToCustomerDate #维修完成给客户时间
  # attr_accessible :title, :body
end
