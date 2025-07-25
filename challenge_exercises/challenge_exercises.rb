=begin
**Challenge: Advanced Looping**
- Write a method that prints all numbers from 1 to 100 that are divisible by both 3 and 5, but do not use arrays or the `.each` method—use only a `while`, `until`, or `for` loop.
=end

puts "Numbers from 1 to 100 that ae both divisible by 3 and 5:"
n = 1
until n > 100
  if n % 3 == 0 and n % 5 == 0
    puts n
  end
  n += 1
end

=begin
- Create a custom class (e.g., `Team` or `BookList`) and make it fully compatible with Ruby's Enumerable methods by implementing the `each` method and including the `Enumerable` module. Demonstrate at least two Enumerable methods (like `map`, `select`, or `find`) on your class.
=end

class Team 
  include Enumerable

  def initialize(members)
    @members = members
  end

  def each
    @members.each do |member|
      yield member
    end
  end
end

team = Team.new(["Alice", "Bob", "Sophia", "David"])
puts "Team members:"
team.each do |member|
  puts member
end

# Demonstrating Enumerable methods
puts "Members with names longer than 3 characters:"
long_names = team.select { |member| member.length > 3 }
puts long_names.join(", ")
puts ""
puts "Uppercase team members:"
uppercase_members = team.map { |member| member.upcase }
puts uppercase_members.join(", ")

