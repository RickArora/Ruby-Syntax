# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
    arr = []
    p str.split('')
    str.split('').each do |element|
        if (!(arr.include?(element)) && str.count(element) > 1)
            arr.push(str.count(element)) 
            arr.push(element)
        elsif (str.count(element) == 1)
            arr.push(element)
        end
    end
    return arr.join()
end
p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
