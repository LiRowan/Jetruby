# p "Введите имя и фамилию"
# name = gets.chomp
# p "Введите возраст"
# age = gets.to_i

class Greeting
  def say_greeting(age, name)
    if age <= 18 
      p "Привет, #{name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
      "user<18"
    else
      p "Привет, #{name}. Самое время заняться делом!"
      "user>18"
    end 
  end
end

user = Greeting.new
user.say_greeting(20, "Ангелина")

# puts say_greeting(20, "Ангелина")