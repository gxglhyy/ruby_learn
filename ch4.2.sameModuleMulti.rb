# ch4.2.sameModuleMulti.rb
module M
    def report
        puts "report from M."
    end
end

module N
    def report
        puts "report from N."
    end
end

class C
    include M
    include N
    include M
end
c = C.new
c.report # "report from N."

class D
    include M
    include N
    prepend M
end
d = D.new
d.report # also "report from N."