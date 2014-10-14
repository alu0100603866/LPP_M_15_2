require "./lib/numeros_c.rb"

require "test/unit"

class Test_NumeroComplejo < Test::Unit::TestCase

    def setup
        @num = Numero_c.new(4,6)
        @num2 = Numero_c.new(5,2)
        @numD = Numero_c.new(2,1)
	end
    
    def test_ini
		@num = Numero_c.new(4,5)
		assert_equal("(4.0,5.0i)",@num.to_s)
	end

	def test_suma
		
		assert_equal("(6.0,6.0i)",(@num+2).to_s,"Error suma con Fixnum")
		assert_equal("(9.0,8.0i)",(@num+@num2).to_s,"Error suma complejos")
	end
    
    def test_resta
        assert_equal("(2.0,6.0i)",(@num-2).to_s,"Error suma con Fixnum")
        assert_equal("(-1.0,4.0i)",(@num-@num2).to_s,"Error suma complejos")
    end

    def test_multiplicacion
	    assert_equal("(8.0,12.0i)",(@num*2).to_s,"Error multiplicar por Fixnum")
	    assert_equal("(8.0,38.0i)",(@num*@num2).to_s,"Error multiplicacion complejos")
    end
    
    def test_division
        assert_equal("(2.0,3.0i)",(@num/2).to_s,"Error multiplicar por Fixnum")
        assert_equal("(2.8,1.6i)",(@num/@numD).to_s,"Error division complejos")
    end
end
