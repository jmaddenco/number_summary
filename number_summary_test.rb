require 'minitest/autorun'

require_relative 'number_summary'

class NumberSummaryTest < MiniTest::Test

end

module NumberSummaryTests

	class Max < NumberSummaryTest
		def test_find_max_int
			assert_equal 6, NumberSummary.max([1, 3, 4, 5, 6])
			assert_equal 8, NumberSummary.max([1, 4, 5, 7, 8])
		end

		def test_find_max_float
			assert_equal 5.6, NumberSummary.max([5.6, 4.2, 2.2, 5.3])
			assert_equal 3.1, NumberSummary.max([3.1, 1, 2.3])
		end
	end

end