class CreateCustomerServices < ActiveRecord::Migration
  def change
    create_table :customer_services do |t|
      t.integer :customer_id
	    t.string :service_reception_personnel #服务接待人员
      t.string :model #机型
	    t.string :sn #序列号
	    t.integer :isInExpireDate #是否在质保期
	    t.date :repairDate #维修时间
	    t.string :repairAddress #维修地点
	    t.string :repairMan #维修人
	    t.integer :isReturnFactory #是否返厂
	    t.string :faultKind #故障类别(电机故障、电路板故障、压力传感器故障、流量传感器故障、其他)
	    t.string :faultReason #故障原因(机器故障、机器进水、机器摔损)
	    t.string :faultMark #故障说明
	    t.date :repairCompleteDate #维修完成时间
	    t.date :repairToCustomerDate #维修完成给客户时间
	  
      t.timestamps
    end
  end
end
