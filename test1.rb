# var1 = "testit"
# p var1.reverse
# p var1
# p var1.reverse!
# # p var1
# letters = 'aAbBcCdDeE'
# puts letters.upcase
# puts letters.downcase
# puts letters.swapcase
# puts letters.capitalize
# puts ' a'.capitalize
# puts letters
#

# class Integer
#   def sum(n)
#     n += n
#   end
# # end
#
# arr = Array.new(10) { rand(1..9) }
# p arr
#   p arr.map(&:odd?)
# p arr.map(&:real?)
# # p [*1..5].map(&:sum)
# p 122345.digits
# p 10.step(by: +1).take(4)
#
def explictic(&block)
  return  "no block" if block.nil?
  block.call
end

explictic { p '2'}
explictic