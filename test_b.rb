hh = {}

loop do

  print 'Наименование товара (введите stop, чтобы выйти): '
  item = gets.chomp.to_s

  if item == 'stop'
     break
  end

  print 'Укажите цену товара: '
  price = gets.chomp.to_f

  print 'Укажите количество товара: '
  q = gets.chomp.to_i

  hh[item] = price, q

end

hh.each do |key, value|
  puts "Товар: #{key} Цена: #{value[0]}, Количество: #{value[1]}", "Стоимость: #{value[0] * value[1]}"
end
