class CustomerBuyRecord < ActiveRecord::Base
  attr_accessible :customer_id,
  :customer_id,
  :no, #编号
  :sn, #序列号
  :name, #名称
  :amount, #数量
  :price, #单价
  :totalPrice, #总价
  :mark, #备注
  :buyDate, #购买日期
  :servicePeople, #服务人员
  :out_of_warehouse_no #出库单号
end
