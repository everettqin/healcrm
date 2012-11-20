class CreateCustomerDiseases < ActiveRecord::Migration
  def change
    create_table :customer_diseases do |t|
	     t.integer :customer_id #CustomerId
		t.string :hospitalName #医院名称
	    t.string :department  #诊断科室
	    t.string :doctorName  #医生姓名
	    t.date :diagnosis_time  #诊断时间
	    t.string :scheme  #治疗方案
	    t.string :name  #疾病名
	    t.string :height #身高
	    t.string :weight #体重
	    t.string :bmi #BMI
	    t.string :activity_ability #活动能力
      t.timestamps
    end
  end
end
