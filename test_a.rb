puts "===================="
puts "Квадратное уравнение"
puts "===================="

print "Введите значение a:"
a = gets.chomp.to_f
  if a == 0
    puts 'Корней нет'
    return
  end

print "Введите значение b:"
b = gets.chomp.to_f

print 'Введите значение c: '
c = gets.chomp.to_f

D = b * b - 4 * a * c

if D == 0
  puts 'x = '+(-b/2/a).to_s
else
  if D > 0
    puts 'x1 = '+((-b-Math.sqrt(D))/2/a).to_s
    puts 'x2 = '+((-b+Math.sqrt(D))/2/a).to_s
  else
    puts 'x1 = ('+(-b/2/a).to_s+','+(Math.sqrt(-D)/2/a).to_s+')'
    puts 'x2 = ('+(-b/2/a).to_s+','+(-Math.sqrt(-D)/2/a).to_s+')'
  end
end