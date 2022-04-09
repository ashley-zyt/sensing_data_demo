class SenseingData < ActiveRecord::Base
	self.table_name = "senseing_datas"
	def create_datas
		for i in 1..100
			SenseingData.new(data_type:rand(2),num_int_one: i, num_int_two: i, num_string_one: i, num_string_two: i).save
		end
	end
end