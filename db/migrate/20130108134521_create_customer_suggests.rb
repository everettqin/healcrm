class CreateCustomerSuggests < ActiveRecord::Migration
  def change
    create_table :customer_suggests do |t|
      t.integer :customer_id
      t.date :suggestDate #日期
	  t.string :content #内容
	  t.string :receptioner #处理人
      t.timestamps
    end
  end
end
