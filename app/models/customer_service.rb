class CustomerService < ActiveRecord::Base
	attr_accessible :customer_id,
	    :service_reception_personnel, #����Ӵ���Ա
		:model, #����
	    :sn, #���к�
	    :isInExpireDate, #�Ƿ����ʱ���
	    :repairDate, #ά��ʱ��
	    :repairAddress, #ά�޵ص�
	    :repairMan, #ά����
	    :isReturnFactory, #�Ƿ񷵳�
	    :faultKind, #�������(������ϡ���·����ϡ�ѹ�����������ϡ��������������ϡ�����)
	    :faultReason, #����ԭ��(�������ϡ�������ˮ������ˤ��)
	    :faultMark, #����˵��
	    :repairCompleteDate, #ά�����ʱ��
	    :repairToCustomerDate #ά����ɸ��ͻ�ʱ��
  # attr_accessible :title, :body
end
