# @author Tim Padjen <tpadjen@gmail.com>
class NumberSummary
	
	class << self

		def return_array(fil)
			file = File.open(fil, "r")
			array = file.read
			array = array.split ","
			# arra = array.to_i
			(0...array.length).each do |n|
				array[n] = array[n].to_i
			end
			array
		end

		def max(array)
			array.max
		end

		def min(array)
			array.min
		end


		def mean(array)
			sum = 0.0
			(0...array.length).each do |n|
				sum += array[n]
			end
			(sum / array.length)
		end

		def median(array)
			array.sort
			average = 0
			if array.length % 2 == 0
				average = (array[(array.length / 2 - 1)] + array[array.length / 2]) / 2
			else 
				return array[array.length / 2]
			end
			average
		end

		def mode(array)
			most = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
			array.max_by { |v| most[v] }
		end

		def q1(array)
			if array.length % 2 == 0 
				array_final = array[0..(array.length/2 - 1)]
			else
				array_final = array[0..(array.length/2)]
			end	
			
			median(array_final)
		end

		def q3(array)
			if array.length % 2 == 0
				array_final = array[(array.length/2)...array.length]
			else
				array_final = array[(array.length/2 + 1)...array.length]
			end
			
			median(array_final)
		end

		def sigma(array)
			variation = mean(array)
			puts variation
			array_dif = []
			(0...array.length).each do |n|
				array_dif.push((array[n] - variation)**2)
			end	
			mean(array_dif)
		end

	end

end

puts NumberSummary.max(NumberSummary.return_array("data.csv"))