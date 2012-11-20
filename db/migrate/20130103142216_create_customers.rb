class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name #姓名
      t.integer :gender #性别
      t.string :telephone #联系电话
      t.string :zip #邮政编码
      t.date :birthday #生日
      t.integer :age #年龄
      t.string :email #email
	    t.string :address #联系地址
	    t.string :province, :null => :true, :default => ''#省
	    t.string :city , :null => :true, :default => ''#市
	    t.string :country , :null => :true, :default => ''#区
	    t.integer :level #客户级别{普通,VIP,黑名单}
	    t.integer :is_recommend , :null => :false, :default => '0'#是否为推荐客户
	    t.string :recommend_customer_name , :null => :true, :default => ''#推荐客户姓名
	    t.string :model #机型
	    t.string :sn #序列号
      t.integer :disease_id
	    t.date :buy_date #购买时间
	    t.integer :category #客户类别(水货客户，弘毅行货，其他行货)
	    t.string :source #客户来源(医院，客户介绍，网络，二手机)
      t.timestamps
    end
  end
end
