class CreateCustomerMaintenances < ActiveRecord::Migration
  def change
    create_table :customer_maintenances do |t|
      t.integer :customer_id
      t.date :action_time  #保养时间
      t.string :serverPeople #服务人员
      t.string :category #保养类型
      t.string :source   #数据源文件
      t.string :model #机型
      t.timestamps
    end
  end
end
