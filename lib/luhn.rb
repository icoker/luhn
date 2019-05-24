module Luhn
    def self.is_valid?(number)
        numArray = number.to_s.split(//).map{|chr| chr.to_i}
        revArray = numArray.reverse
        dbldArray = revArray.map.with_index{|v,i| i % 2 == 0 ? v : v * 2 } 
        reducedArray = dbldArray.map.with_index{|v,i| i % 2 == 0 ? v : (v >= 10 ? v-9 : v) }
        arraySum = reducedArray.reduce(0, :+)
        return true if arraySum % 10 == 0 else return false
    end
end