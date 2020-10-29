require 'matrix'

arr = []
main_arr = []

def matrix_info(main_arr)
  matrix = Matrix[*main_arr]
  raise 'This matrix isn`t square!' if !matrix.square?
  matrix.determinant
end


loop do
  print 'type you digit:'
  enter = gets.chomp
  if enter == '' && arr.empty?
    puts matrix_info(main_arr)
    break
  elsif enter == ''
    main_arr << arr
    arr = []
  elsif enter.match?(/^\d+$/)
    arr << enter.to_i
  else
    puts 'check your enter'
  end
end
