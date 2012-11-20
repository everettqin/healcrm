class CreateCustomerBuyRecords < ActiveRecord::Migration
  def change
    create_table :customer_buy_records do |t|
      t.integer :customer_id
      t.string :no #编号
	    t.string :sn #序列号
	    t.string :name #名称
	    t.integer :amount #数量
	    t.integer :price #单价
	    t.integer :totalPrice #总价
	    t.string :mark #备注
	    t.date :buyDate #购买日期
	    t.string :servicePeople #服务人员
	    t.string :out_of_warehouse_no #出库单号
      t.timestamps
    end
  end
end
