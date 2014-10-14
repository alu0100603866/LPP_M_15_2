require "./lib/numeros_c.rb"

require "test/unit"

class Test_NumeroComplejo < Test::Unit::TestCase

	def test_ini
		@num = Numero_c.new(4,5)
		assert_equal("(4,5i)",@num.to_s)
	end

	def test_suma
		@num = Numero_c.new(4,5)
		@num2 = Numero_c.new(5,2)
		assert_equal("(6,5i)",(@num+2).to_s,"Error suma con Fixnum")
		assert_equal("(9,7i)",(@num+@num2).to_s,"Error suma complejos")
	end

end
