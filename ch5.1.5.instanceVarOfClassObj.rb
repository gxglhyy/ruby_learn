=begin
ch5.1.5.instanceVarOfClassObj.rb
=end
class C
    @v = "Instance variable of class object." # 当前的 self 是类对象 C.
    def show_var
        puts @v # 当前的 self 是调用该函数的C类实例
    end
    def C.show_var
        puts @v # 当前的 self 是类对象 C
    end
end

C.show_var  # "Instance variable of class object."

c = C.new
c.show_var # a null line.