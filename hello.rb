puts "Hello Ruby!\n"
puts "Goodbye Ruby!\n"

# This is a single line comment.

=begin
This is a block comment.
=end

a = 5

b, c, d = 10, 15, 20

puts a.kind_of?(Integer)

puts a.class

a = "5"

puts a.class

a = 20

puts a.to_f

puts a.to_s(10)

$global_var = 1
local_var = 2
CONSTANT_VAR = 3

puts defined? $global_var
puts defined? local_var
puts defined? CONSTANT_VAR

puts Integer(11.1)
puts Integer("11")

def add(num1, num2)
    return num1 + num2
end

puts add(1, 2)

def add(*nums)
    puts nums
end

add(1, 2, 3)

seq = 1..10

puts seq.to_a

seq = "a".."z"

puts seq.to_a

seq = "abc".."abz"

puts seq.to_a

puts seq.include?("abc")

seq.each{|s| puts s}

puts seq === "abc"

days = Array.new(7)

puts days

days = Array["mon", "tue", "wed", "thu", "fri", "sat", "sun"]

puts days

rep = Array.new(5, "Hello")

puts rep

days = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"]

puts days

puts days.empty?
puts days.size
puts days[0].class
puts days.first
puts days.last
puts days[-2]
puts days[1, 3]
puts days[1..3]

puts rep + days
puts rep << "gg" << "wp"

puts rep.uniq()
puts rep.uniq!()

nums1 = [1, 2, 3]
nums2 = [1, 2, 4]

puts nums1 <=> nums2

nums1[0, 2] = 2, 1

puts nums1

nums1.delete_at(0)
nums1.delete(2)

puts nums1

puts Math.constants
puts Math::PI
puts Math::E

class Person
    # def initialize()
    # end

    def name()
        @name
    end

    def name=(value)
        @name = value
    end

    def speak()
        puts "Hello!!!"
    end
end

person = Person.new()
puts(person.name)

class EvilPeople < Person
    def initialize()
        @evil_points = 10
    end

    def evil_points()
        @evil_points
    end
end

puts EvilPeople.new().evil_points

puts "TRUE" if true

customerName = "John"
if customerName == "Fred"
    puts "Hello Fred!"
elsif customerName == "John"
    puts "Hello John!" 
elsif customername == "Robert"
    puts "Hello Bob!"
end

i = 0
while i < 10 do
    break if i == 5
    puts i
    i += 1
end

i = 0
puts i += 1 until i == 5

for i in 1..8 do
    puts i
end

x = 10
x.times{|i| puts i}
puts ""
3.upto(x) {|i| puts i}


multi_line_string = <<DOC
This is a multi line string
with tabs and new lines getting recognized.
DOC

puts multi_line_string

multi_line_string["multi"] = "multiple"

print multi_line_string

chars = multi_line_string.split(/ /)

print chars

print multi_line_string.upcase