class Numero_c
	attr_reader :real, :imag
	def initialize(r,i)
		@real = r
		@imag = i
	end

	def to_s
		"(#{real},#{imag}i)"
	end
	
end

