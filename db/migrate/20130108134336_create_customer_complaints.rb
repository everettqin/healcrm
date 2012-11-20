class CreateCustomerComplaints < ActiveRecord::Migration
  def change
    create_table :customer_complaints do |t|
      t.integer :customer_id
      t.date :complaintsDate #投诉时间
	  t.string :subject #投诉主题
	  t.string :receptioner #处理人
	  t.string :processMethod #处理方法
	  t.date :processCompleteDate #完成时间
	  t.string :processer #完成人
      t.timestamps
    end
  end
end
