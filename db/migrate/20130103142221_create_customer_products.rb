class CreateCustomerProducts < ActiveRecord::Migration
  def change
    create_table :customer_products do |t|
      t.integer :customer_id #CustomerId
      t.string :name #产品名
	    t.string :sn  #产品序列号
	    t.string :no #�编号
	    t.date :buyTime #购买时间
	    t.string :salesAgency  #销售机构
	    t.string :sales #销售人员
	    t.integer :isSeeCustomer #是否面见客户本人
	    t.string :guidance #使用指导(面对面、亲属转达、电话指导)
	    t.string :outboundNumber #出库单号
	    t.string :user #使用人(本人、赠送亲属、赠送朋友)
	    t.string :price #价格
	    t.date :expiryDate #质保到期日
	    t.integer :state #状态(使用中，停用，身故)
      t.timestamps
    end
  end
end
