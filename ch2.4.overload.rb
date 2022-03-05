# ch2.4.overload.rb
class C
    def op_x(a)
        a + 1
    end
    def op_x(a, b)
        a + b
    end
end

o = C.new
o.op_x(10) # wrong number of arguments (given 1, expected 2) (ArgumentError)
o.op_x(10, 5)