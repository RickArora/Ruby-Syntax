# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  
    def span()
        if self.length == 0 
            return nil
        end
        self.max - self.min
    end

    def average() 
        if self.length == 0 
            return nil
        end
        total = 0.0
        self.each do |number|
            total = number + total
        end
        total / self.length
    end

    def median()
        if self.length == 0 
            return nil
        end
        sortedArray = self.sort()
        length = sortedArray.length-1
        if (length % 2) == 0
            return sortedArray[(length)/2]
        else 
            return (sortedArray[(length)/2]+sortedArray[((length)/2)+1])/2.0
        end
    end

    def counts()
        count = Hash.new(0)
        self.each { |ele| count[ele] += 1}
        count
    end

    def my_count(value) 
        self.counts[value]
    end

    def my_index(value)
        self.index(value)
    end

    def my_uniq() 
        newArray = self.uniq!
    end


    def my_transpose()
        self.first.zip(*self[1..-1])
        end
end
