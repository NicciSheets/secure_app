def work(operator, n1, n2)

	case operator
	when "add"
		result = n1.to_f + n2.to_f
		if result.to_s.split("").last.to_i == 0 
			result = result.to_s.split("").values_at(0..-3).join.to_i
		end
	when "subtract"
		result = n1.to_f - n2.to_f
		if result.to_s.split("").last.to_i == 0 
			result = result.to_s.split("").values_at(0..-3).join.to_i
		end
	when "multiply"
		result = n1.to_f * n2.to_f
		if result.to_s.split("").last.to_i == 0 
			result = result.to_s.split("").values_at(0..-3).join.to_i
		end
	when "divide"
		if n2 == 0
			result = "Cannot Divide By Zero - Solution Is Undefined"
		else
			result = n1.to_f / n2.to_f
			if result.to_s.split("").last.to_i == 0 
				result = result.to_s.split("").values_at(0..-3).join.to_i
			end
		end
	end
	result
		unless result == "Cannot Divide By Zero - Solution Is Undefined"
			result = result.round(2)
		end
	result = " = #{result}"
		
end


p work("divide", 30.3, 5)