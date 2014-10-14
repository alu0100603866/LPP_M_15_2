class Numero_c
	attr_reader :real, :imag
	def initialize(r,i)
		@real = r
		@imag = i
	end

	def to_s
		"(#{real},#{imag}i)"
	end

	def +(other)
		if (other.instance_of? Fixnum)
			return Numero_c.new((@real+other),@imag)
		end

		if (other.instance_of? Numero_c)
			return Numero_c.new(@real+other.real,@imag+other.imag)
		else
			puts "Error, imposible sumar"
		end
	end

    def -(other)
        if (other.instance_of? Fixnum)
            return Numero_c.new((@real-other),@imag)
        end

    if (other.instance_of? Numero_c)
        return Numero_c.new(@real-other.real,@imag-other.imag)
    else
        puts "Error, imposible restar"
    end

end

