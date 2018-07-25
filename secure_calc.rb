def work(operator, n1, n2)

	case operator
	when "add"
		result = n1.to_f + n2.to_f
	when "subtract"
		result = n1.to_f - n2.to_f
	when "multiply"
		result = n1.to_f * n2.to_f
	when "divide"
		if n2 == 0
			result1 = "Cannot Divide By Zero - Solution Is Undefined"
		else
			result = n1.to_f / n2.to_f
		end
	end
	result || result1
	if result.to_s.split("").last.to_i == 0
		result = result.to_s.split("").values_at(0..-3).join.to_i
	elsif		
		result = result.round(2)
	elsif 
		result1		
	end
	result = " = #{result}" 
	result1
	
end


p work("divide", 30, 30)