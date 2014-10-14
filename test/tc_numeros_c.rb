require "./lib/numeros_c.rb"

require "test/unit"

class Test_NumeroComplejo < Test::Unit::TestCase

	def test_ini
		@num = Numero_c.new(4,5)
		assert_equal("(4,5i)",@num.to_s)
	end
end
