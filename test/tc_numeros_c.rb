require "./lib/numeros_c.rb"

require "test/unit"

class Test_NumeroComplejo < Test::Unit::TestCase

    def setup
        @num = Numero_c.new(4,5)
        @num2 = Numero_c.new(5,2)
	end
    
    def test_ini
		@num = Numero_c.new(4,5)
		assert_equal("(4,5i)",@num.to_s)
	end

	def test_suma
		
		assert_equal("(6,5i)",(@num+2).to_s,"Error suma con Fixnum")
		assert_equal("(9,7i)",(@num+@num2).to_s,"Error suma complejos")
	end
    
    def test_resta
        assert_equal("(2,5i)",(@num-2).to_s,"Error suma con Fixnum")
        assert_equal("(-1,3i)",(@num-@num2).to_s,"Error suma complejos")
    end

    def test_multiplicacion
	    assert_equal("(8,10i)",(@num*2).to_s,"Error multiplicar por Fixnum")
	    assert_equal("(10,33i)",(@num*@num2).to_s,"Error multiplicacion complejos")
    end
end
