lowercase=("a".."z").to_a
uppercase=("A".."Z").to_a
numeric=("0".."9").to_a
special=%w[! @ # $ % ^ & * ( ) _ + - = { } [ ] ; ' : " , . / < > ? ~ `]
regular=lowercase+uppercase+numeric

length=ARGV.first.to_i

special_position=rand(length)+1

pass=""

1.upto(length) do |i|
  if i==special_position
    pass+=special.sample
  else
    pass+=regular.sample
  end
end

puts pass
