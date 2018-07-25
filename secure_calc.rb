def work(operator, n1, n2)

	case operator
	when "add"
		result = n1.to_f + n2.to_f
		if result.to_s.split("").last.to_i == 0
				result = result.to_s.split("").values_at(0..-3).join.to_i
		end
		#p "n1.to_f is #{n1.to_f}"
		#p "n2.to_f is #{n2.to_f}"
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
		if n2.to_f == 0.0
			#p "n2.to_f is #{n2.to_f}"
			result = "Cannot Divide By Zero - Solution Is Undefined"
		elsif 
			result = n1.to_f / n2.to_f
			if result.to_s.split("").last.to_i == 0
				result = result.to_s.split("").values_at(0..-3).join.to_i
			end
		end
	end
	result.round(2)
end


#p work("add", 2.3, 3)