file = File.open("txt/students.txt", "r")

result_file = File.open("txt/results.txt", "w")

students = file.readlines

while true
  puts "Введите возраст студента (для выхода введите -1): "
  age = gets.chomp.to_i
  
  break if age == -1
  
  students.each do |student|
    name, surname, student_age = student.split(" ")
    
    if student_age.to_i == age
      result_file.write("#{name} #{surname} #{student_age}")
    end
  end
end

file.close
result_file.close

result_file = File.open("txt/results.txt", "r")

result_file.each do |line|
  puts line
end

result_file.close