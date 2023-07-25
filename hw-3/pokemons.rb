puts "Сколько покемонов добавить?"
num = gets.to_i

def add_pokemon(number)
  result = []
  number.times do 
    puts "Введите имя покемона"
    name = gets.chomp
    puts "Введите цвет покемона"
    color = gets.chomp
    result << {name: name, color: color}
  end
  result
end

p add_pokemon(num)